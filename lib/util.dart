import 'dart:html';

void fadeIn(Element el) {
  el.classes.remove('hidden');
}

void fadeOut(Element el) {
  el.classes.add('hidden');
}

void shutdown() {
  fadeOut(document.querySelector('app'));
}