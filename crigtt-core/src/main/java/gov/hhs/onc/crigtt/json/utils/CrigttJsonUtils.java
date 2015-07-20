package gov.hhs.onc.crigtt.json.utils;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.beans.PropertyDescriptor;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.LinkedHashMap;
import java.util.Map;
import org.springframework.beans.BeanWrapper;
import org.springframework.beans.BeanWrapperImpl;

public final class CrigttJsonUtils {
    private final static String KEY_PROP_NAME = "key";
    private final static String VALUE_PROP_NAME = "value";

    private CrigttJsonUtils() {
    }

    public static <T extends Enum<T>> String serializeEnum(ObjectMapper objMapper, Class<T> enumClass) throws IOException {
        T[] enumItems = enumClass.getEnumConstants();
        Map<String, Map<String, Object>> enumMap = new LinkedHashMap<>(enumItems.length);
        Map<String, Object> enumItemMap;
        Map<String, String> enumItemValueMap;
        String enumItemKey;
        BeanWrapper enumItemWrapper;
        PropertyDescriptor[] enumItemPropDescs;
        Method enumItemPropGetter;
        String enumItemPropName;

        for (T enumItem : enumItems) {
            enumMap.put((enumItemKey = enumItem.name()), (enumItemMap = new LinkedHashMap<>(2)));

            enumItemMap.put(KEY_PROP_NAME, enumItemKey);

            enumItemMap.put(VALUE_PROP_NAME,
                (enumItemValueMap =
                    new LinkedHashMap<>((enumItemPropDescs = (enumItemWrapper = new BeanWrapperImpl(enumItem)).getPropertyDescriptors()).length)));

            for (PropertyDescriptor enumItemPropDesc : enumItemPropDescs) {
                if (((enumItemPropGetter = enumItemPropDesc.getReadMethod()) == null) || !enumItemPropGetter.isAnnotationPresent(JsonProperty.class)) {
                    continue;
                }

                enumItemValueMap.put((enumItemPropName = enumItemPropDesc.getName()), enumItemWrapper.getPropertyValue(enumItemPropName).toString());
            }
        }

        return objMapper.writeValueAsString(enumMap);
    }
}
