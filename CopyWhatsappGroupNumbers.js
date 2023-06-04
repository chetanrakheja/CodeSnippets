var text = document.body.innerText;
text = text.replace(/\s/g, '').replace(/-/g, '').replace(/\(/g, '').replace(/\)/g, '');
var regex = /\+?\d{5,}/g;
var matches = text.match(regex);
var uniquePhoneNumbers = [...new Set(matches)];
console.log(uniquePhoneNumbers);

var numbersString = uniquePhoneNumbers.join('\n');

function copyToClipboard(text) {
  var textarea = document.createElement('textarea');
  textarea.value = text;
  document.body.appendChild(textarea);
  textarea.select();
  document.execCommand('copy');
  document.body.removeChild(textarea);
}

copyToClipboard(numbersString);
console.log('Numbers copied to clipboard');
