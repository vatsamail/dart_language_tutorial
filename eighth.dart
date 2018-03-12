import 'dart:math';
import 'dart:html';

// playing with html .. important stuff
// refer: https://api.dartlang.org/stable/1.24.3/dart-collection/dart-collection-library.html

void main() {
	playHtml();
}

void playHtml() {
	String output = "";

	Element title = querySelector("#sum");
	title.setInnerHtml("Hello World");
	title.style.color = "Red";
	title.classes.add("titleStyle");
	output += title.innerHtml+"\n";
	

	Element div = querySelector("#divBox");
	DivElement sampDiv = new DivElement();
	sampDiv.text = "I am a new DIV";
	div.children.add(sampDiv);

	AnchorElement sampAnchor = new AnchorElement();
	sampAnchor.text = "Google";
	sampAnchor.setAttribute("href", "http://google.com");
	sampAnchor.appendText("Appended Text");
	output += "href of link ${sampAnchor.getAttribute("href")}\n";
	div.children.add(sampAnchor);
	div.children.add(new Element.tag('br'));

	querySelector("#output").text = output; 

	// change ID
	Element input_elem = new InputElement();
	input_elem.attributes['id'] = "InputElement";
	div.children.add(input_elem);
	inputElementChange(MouseEvent event) => querySelector("#output").text = output + " Input Changed - \n";
	querySelector("#InputElement").onChange.listen(inputElementChange);	

// Other Elements : AreaElement, BRElement, ButtomElement,
  // ButtonInputElement, CheckboxInputElement, ContentElement,
  // DListElement, DetailsElement, DialogElement, EmailInputElement,
  // EmbedElement, FileUploadInputElement, FormElement, HeadingElement,
  // ImageElement, InputElement, LIElement, LabelElement, LinkElement,
  // MapElement, MediaElement, MenuElement, MenuItemElement,
  // OListElement, OptionElement, ParagraphElement, ParamElement,
  // PreElement, RadioButtonInputElement, ResetButtonInputElement,
  // SpanElement, SubmitButtonInputElement, TableElement,
  // TextAreaElement, TitleElement, UListElement, VideoElement
  // https://api.dartlang.org/apidocs/channels/be/dartdoc-viewer/dart:html


}