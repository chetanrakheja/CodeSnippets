javascript:(function(){var t=document.body.innerText;t=t.replace(/\s/g,'').replace(/-/g,'').replace(/\(/g,'').replace(/\)/g,'');var e=/\+?\d{5,}/g,r=t.match(e),n=[...new Set(r)];console.log(n);var o=n.join('\n');function c(t){var e=document.createElement('textarea');e.value=t,document.body.appendChild(e),e.select(),document.execCommand('copy'),document.body.removeChild(e)}c(o),console.log('Numbers copied to clipboard')})()
