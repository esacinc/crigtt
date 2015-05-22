package gov.hhs.onc.crigtt.utils;

import com.github.sebhoss.warnings.CompilerWarnings;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.collections4.PredicateUtils;

public final class CrigttIteratorUtils {
    public final static int DEFAULT_ITERATOR_SPLITERATOR_FLAGS = Spliterator.CONCURRENT | Spliterator.ORDERED;

    private CrigttIteratorUtils() {
    }

    public static <T> Stream<T> stream(Iterator<T> iterator) {
        return stream(iterator, -1);
    }

    public static <T> Stream<T> stream(Iterator<T> iterator, long size) {
        return StreamSupport.stream(
            ((size >= 0) ? Spliterators.spliterator(iterator, size, (DEFAULT_ITERATOR_SPLITERATOR_FLAGS | Spliterator.SIZED)) : Spliterators
                .spliteratorUnknownSize(iterator, DEFAULT_ITERATOR_SPLITERATOR_FLAGS)), false);
    }

    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public static <T, U> Iterator<U> instances(Iterator<T> iterator, Class<U> clazz) {
        return ((Iterator<U>) IteratorUtils.filteredIterator(iterator, PredicateUtils.instanceofPredicate(clazz)));
    }
}
