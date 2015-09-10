package gov.hhs.onc.crigtt.data.impl;

import java.util.stream.Stream;
import javax.annotation.Nullable;
import org.apache.commons.collections4.map.LinkedMap;
import org.apache.commons.lang3.tuple.MutablePair;

public class MapKey extends LinkedMap<String, String> {
    public static class MapKeyEntry extends MutablePair<String, String> {
        private final static long serialVersionUID = 0L;

        public MapKeyEntry(String key) {
            this(key, false);
        }

        public MapKeyEntry(String key, boolean wildcard) {
            this(key, null, wildcard);
        }

        public MapKeyEntry(String key, @Nullable String value) {
            this(key, value, false);
        }

        public MapKeyEntry(String key, @Nullable String value, boolean wildcard) {
            super(key, ((value != null) ? value : (wildcard ? WILDCARD_VALUE : NULL_VALUE)));
        }
    }

    public final static String NULL_VALUE = "";
    public final static String WILDCARD_VALUE = "";

    public final static int NULL_HASH = System.identityHashCode(NULL_VALUE);
    public final static int WILDCARD_HASH = System.identityHashCode(WILDCARD_VALUE);

    private final static long serialVersionUID = 0L;

    public MapKey(MapKeyEntry ... entries) {
        super(entries.length);

        Stream.of(entries).forEach(entry -> this.put(entry.getKey(), entry.getValue()));
    }

    @Override
    protected boolean isEqualKey(Object key1, Object key2) {
        return (super.isEqualKey(key1, key2) || (key1.hashCode() == WILDCARD_HASH) || (key2.hashCode() == WILDCARD_HASH));
    }

    @Override
    protected int hash(Object key) {
        int hash = System.identityHashCode(key);

        return (((hash != NULL_HASH) && (hash != WILDCARD_HASH)) ? super.hash(key) : hash);
    }

    @Override
    protected Object convertKey(Object key) {
        return ((key != null) ? key : NULL_VALUE);
    }
}
