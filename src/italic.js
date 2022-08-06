import { trans } from './translations';

export default function (el, custom) {
    if (!trans('disableItalic')) {
        const classes = el.classList;
        if (classes.contains('italic')) {
            return;
        }

        classes.add('italic');
        if (custom) {
            classes.add('custom-italic');
        }
    }
}
