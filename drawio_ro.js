var url = 'https://www.draw.io/?embed=1&spin=1&modified=unsavedChanges&proto=json&chrome=0';

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
	    var u = window.location.href+'/limbic.drawio';
	    // alert(u);
	    client.open('GET', u);
	    client.onreadystatechange = function() {
		// Sends the data URI with embedded XML to editor
		iframe.contentWindow.postMessage(JSON.stringify({action: 'load', xmlpng: client.responseText}), '*');
		alert(client.responseText);
	    }
	    client.send();
	}
    }
},false);
