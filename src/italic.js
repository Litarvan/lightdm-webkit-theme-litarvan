import { trans } from './translations';

export default function(el, custom) {
    if (!trans('disableItalic')) {
        const classes = el.classList;
        classes.add('italic');

        if (custom) {
            classes.add('custom-italic');
        }
    }
}