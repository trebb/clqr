<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>Common Lisp Quick Reference</title>
    <meta name="author" content="Bert Burgemeister">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="new-pure.css" type="text/css">
  </head>

  <body>

    <table class="main-table">
      <tr>
	<td class="title" colspan="2">
	  <a href="index.php">Common Lisp Quick Reference</a>
	</td>
      </tr>
      <tr>
	<td class="side-content">
	  <ul>
	    <li><a href="index.php">home</a>
	    <li><a href="download.php">download</a>
	    <li><a href="printing.html">printing &amp; bookbinding</a>
	    <li><a href="source.html">source</a>
	    <li><a href="license.html">license</a>
	    <li>
	      <a href="http://developer.berlios.de"
		 title="BerliOS Developer"> 
		<img src="http://developer.berlios.de/bslogo.php?group_id=9765"
		     alt="BerliOS Developer Logo">
	      </a> 
	    <li><a href="http://developer.berlios.de/projects/clqr/">project page</a> 
	  </ul>
	</td>
	<td class="content">
	  <a href="clqr-a4-consec.pdf" title="Preview">
	    <img class="right" src="sample-frontcover.jpg"
		 alt="[Front Cover Sample]"/> 
	  </a>
	  <h3>Introduction</h3>
	  <p> Common Lisp Quick Reference is a free booklet with short
	    descriptions of the thousand or so symbols defined in the ANSI standard. 
	    It comes with a comprehensive index.
	  </p>
	  <p>
	    This rather humble effort is by no means meant to rival
	    the <a href="http://www.lispworks.com/documentation/HyperSpec/Front/index.htm">
	    Common Lisp HyperSpec</a> 
	    or any of the great introductory web resources and books. 
	    Its purpose is to give those who like a piece of
	    dead tree in their hands a quick overview on things they
	    know already, or some clue on what to look up elsewhere.
	  </p>
	  
	  <p>It is written in LaTeX and formatted for printing on both
	    A4 and letter paper. After folding the sheets lengthwise,
	    they can easily be turned into a handy booklet. 
	  </p>
	  <p>
	    Please report any errors to <a href="mailto:trebb@users.berlios.de?subject=CLQR ">
	    trebb@users.berlios.de</a>. Nitpickers welcome!
	  </p>
	  <p>&nbsp;</p>
	    
	    <h3>Latest Changes</h3>
	    <?php echo(file_get_contents("latest-changes.html"));?>	
	</td>
      </tr>
      <tr>
	<td class="quicklinks" colspan="2">
	  &nbsp;
	</td>
      </tr>
      <tr>
	<td class="footer" colspan="2">
	  &copy; 2008, 2009, 2010 &nbsp;
	  <a href="mailto:trebb@users.berlios.de?subject=CLQR ">
	    Bert Burgemeister
	  </a>
	</td>
      </tr>
    </table>
  </body>
</html>
