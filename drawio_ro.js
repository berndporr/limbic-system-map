var url = 'https://berndporr.github.io/limbic-system-map/src/main/webapp/index.html?embed=1&spin=1&modified=unsavedChanges&proto=json&chrome=0';

var iframe = document.getElementById('drawioiframe');
iframe.src = url;

window.addEventListener('message',function(evt) {

    var source = document.getElementById('drawioimg');

    if (evt.data.length > 0)
    {
	var msg = JSON.parse(evt.data);

	// Received if the editor is ready
	if (msg.event == 'init')
	{
	    var client = new XMLHttpRequest();
	    var u = 'limbic-map.xml';
	    client.open('GET', u);
	    client.onreadystatechange = function() {
		iframe.contentWindow.postMessage(JSON.stringify({action: 'load', xml: client.responseText}), '*');
	    }
	    client.send();
	}
    }
},false);
