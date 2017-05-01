import 'dart:async';
import 'dart:html';

Element $(String query) => document.querySelector(query);

void fadeIn(Element el) {
  el.classes.remove('hidden');
}

void fadeOut(Element el) {
  el.classes.add('hidden');
}

void fadeSwitch(Element oldEl, Element newEl, String display, [int delay = 300]) {
  fadeOut(oldEl);

  new Future.delayed(new Duration(milliseconds: delay), () {
    oldEl.style.display = 'none';
    newEl.style.display = display;

    new Future.delayed(new Duration(milliseconds: (delay / 6).floor()), () {
      fadeIn(newEl);
    });
  });
}

void focus() {
  new Future.delayed(const Duration(milliseconds: 400), () {
    ($('#password') as InputElement).focus();
  });
}

void shutdown() => fadeOut($('app'));