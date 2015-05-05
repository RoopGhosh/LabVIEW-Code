<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0"    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
      <head>
        <script language="javascript" type="text/javascript">

          <!--This script below stores the clciked tables in a stack and a pointer is maintained to go to and fro amongs the -->

          var list = [];
          var last_table='table3';
          var first_click=0;
          var back=0;
          var forward=0;
          var cur=0;
          var objToBeHighlighted;
          list.push('table3');
          function go_back()
          {
          back=1;
          if(cur>1)
          cur--;

          toggle(list[cur-1]);
          }

          function go_forward()
          {

          forward=1;
          if( list.length > cur)
          {
          cur++;
          }

          toggle(list[cur-1]);
          }

          function toggle(item)
          {


          if(cur==1)
          {
          obj_back=document.getElementById('back');
          obj_back.style.display = "none";
          }
          else
          {
          obj_back=document.getElementById('back');
          obj_back.style.display = "block";
          }

          if(cur==list.length)
          {
          obj_back=document.getElementById('forward');
          obj_back.style.display = "none";
          }
          else
          {
          obj_back=document.getElementById('forward');
          obj_back.style.display = "block";
          }

          if(back==0 &amp;&amp; forward==0)
          {
          if(last_table==item)
          return;
          if(cur!=list.length)
          {
          for(i=0;cur.length-cur>=i;i++)
          list.pop();
          }

          list.push(item);

          cur=list.length;
          }

          obj=document.getElementById(item);

          obj3=document.getElementById('table3');
          obj4=document.getElementById('table4');
		  obj5=document.getElementById('table5');
		  obj6=document.getElementById('table6');
		  obj7=document.getElementById('table7');
		  obj8=document.getElementById('table8');
		  obj9=document.getElementById('table9');
		  obj10=document.getElementById('table10');
		  obj11=document.getElementById('table11');
          obj12=document.getElementById('table12');
		  obj13=document.getElementById('table13');
		  obj14=document.getElementById('table14');
		  obj15=document.getElementById('table15');
		  obj16=document.getElementById('table16');
		  obj17=document.getElementById('table17');
		  obj18=document.getElementById('table18');
          obj19=document.getElementById('table19');
		  obj20=document.getElementById('table20');
		  obj21=document.getElementById('table21');
		  obj22=document.getElementById('table22');
		  obj23=document.getElementById('table23');
		  
          visible = (obj.style.display != "none");


          obj3.style.display = "none";
          obj4.style.display = "none";
		  obj5.style.display = "none";
		  obj6.style.display = "none";
		  obj7.style.display = "none";
		  obj8.style.display = "none";
		  obj9.style.display = "none";
		  obj10.style.display = "none";
		  obj11.style.display = "none";
		  obj12.style.display = "none";
		  obj13.style.display = "none";
		  obj14.style.display = "none";
		  obj15.style.display = "none";
		  obj16.style.display = "none";
		  obj17.style.display = "none";
		  obj18.style.display = "none";
		  obj19.style.display = "none";
		  obj20.style.display = "none";
		  obj21.style.display = "none";
		  obj22.style.display = "none";
		  obj23.style.display = "none";
		  
          obj.style.display = "block";

          <!--Highlight the background of the left summary frame when clicked -->
          if(first_click==1)
          {
          if(objToBeHighlighted.style.backgroundColor=="#3377cc")
            objToBeHighlighted.style.backgroundColor="#ffffff";
          }

          var str=item.concat('_clicked');
          if(objToBeHighlighted=document.getElementById(str))
          {
          objToBeHighlighted.style.backgroundColor="#3377cc";
          }


          back=0;
          forward=0;
          if(back==0 &amp;&amp; forward==0)
            {
            last_table=item;
            }
            
          if(first_click==0)
            {
            obj_back=document.getElementById('forward');
            obj_back.style.display = "none";
            first_click=1;
            }
         }
        </script>
      </head>
      
      <body>
        <!--
        This is an XSLT template file. Fill in this area with the
        XSL elements which will transform your XML to XHTML.
    -->

        <xsl:variable name="color_headers">#3399FF</xsl:variable>
        <xsl:variable name="color_link">Blue</xsl:variable>
        <xsl:variable name="color_details">#668844</xsl:variable>
        <xsl:variable name="color_fail">darksalmon</xsl:variable>
        <xsl:variable name="color_pass">green</xsl:variable>
        <xsl:variable name="color_pass1">red</xsl:variable>
        <xsl:variable name="color_pass2">firebrick</xsl:variable>
        <xsl:variable name="color_pass3">black</xsl:variable>
        <xsl:variable name="color_pass4">red</xsl:variable>
        <xsl:variable name="color_pass0">green</xsl:variable>

        <xsl:variable name="color_crash">orange</xsl:variable>
        <xsl:variable name="color1">#CAE1FF</xsl:variable>
        <xsl:variable name="color2">#E6E6FA</xsl:variable>
        <xsl:variable name="color0">#E6E6FA</xsl:variable>

        <div id="back" style="position:absolute; top:60px; left:500px; z-index:1; padding:5px; cursor:pointer; display:none;"  onclick="javascript:go_back()">
          <img src="back.gif"></img>
        </div>

        <div id="forward" style="position:absolute; top:60px; left:700px; z-index:1; padding:5px; cursor:pointer; display:none;"  onclick="javascript:go_forward()">
          <img src="forward.gif"></img>
        </div>

        <!--Header Frame-->
        <div id="layer0" style="position:absolute; top:12px; left:150px; z-index:1; padding:5px;" >
          <table id="table0" border="1" align="center" cellspacing="2" cellpadding="2" width="100%">
            <!--MACHINE NAME AND USER NAME-->
            <tr>
              <td align="left">
                <b>
                  Machine Name &#160;&#160;&#160;&#160;&#160;&#160;:
                </b>
                <font color="{normalize-space($color_details)}">
						abc
                </font>
              </td>

              <td align="left">
                <b>
                  User Name :
                </b>
                <font color="{normalize-space($color_details)}">
					ggg
                </font>
              </td>

            </tr>


          </table>

        </div>

        <!--LEFT FRAME-->
        <!--Test Summary-->
        <div id="layer1" style="position:absolute; top:100px; left:10px; width:250px; height:700px; z-index:1; padding:5px;overflow:scroll">
          <table id="table1" border="1"  align="center">
		  
		  <!--2010-2013-->
		  
            <tr>
              <th style="background-color:{$color_headers}">Test Report</th>
              <th style="background-color:{$color_headers}">Count</th>
            </tr>
            <tr id="table3_clicked">
			  <th>2010-2013</th>
              <th>Install-Run2010</th>
              <td align="center"  onclick="javascript:toggle('table3')" style="cursor:pointer;">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=1]/Install-Run2010/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
            <tr id="table4_clicked">
			<th></th>
              <th >
                Install2013-Run2010
              </th>
              <td  align="center" onclick="javascript:toggle('table4')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=1]/Install2013-Run2010/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			<tr id="table5_clicked">
			<th></th>
              <th >
                Install2013-Run2013
              </th>
              <td  align="center" onclick="javascript:toggle('table5')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=1]/Install2013-Run2013/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			<tr id="table6_clicked">
			<th></th>
              <th >
                Uninstall2013-Run2010
              </th>
              <td  align="center" onclick="javascript:toggle('table6')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=1]/Uninstall2013-Run2010/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			<tr id="table7_clicked">
			<th></th>
              <th >
                Install-Run2010-VS-Install2013-Run2010
              </th>
              <td  align="center" onclick="javascript:toggle('table7')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=1]/Install-Run2010-VS-Install2013-Run2010/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			<tr id="table8_clicked">
			<th></th>
              <th >
               Uninstall2013-Run2010-VS-Install-Run2010 
              </th>
              <td  align="center" onclick="javascript:toggle('table8')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=1]/Uninstall2013-Run2010-VS-Install-Run2010/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			<tr id="table9_clicked">
			<th></th>
              <th >
                Install2013-Run2013-VS-Native2013
              </th>
              <td  align="center" onclick="javascript:toggle('table9')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=1]/Install2013-Run2013-VS-Native2013/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			
			<!--2011-2013-->
			
            <tr>
              <th style="background-color:{$color_headers}">Test Report</th>
              <th style="background-color:{$color_headers}">Count</th>
            </tr>
            <tr id="table10_clicked">
			  <th>2011-2013</th>
              <th>Install-Run2011</th>
              <td align="center"  onclick="javascript:toggle('table10')" style="cursor:pointer;">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=2]/Install-Run2011/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
            <tr id="table11_clicked">
			<th></th>
              <th >
                Install2013-Run2011
              </th>
              <td  align="center" onclick="javascript:toggle('table11')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=2]/Install2013-Run2011/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			<tr id="table12_clicked">
			<th></th>
              <th >
                Install2013-Run2013
              </th>
              <td  align="center" onclick="javascript:toggle('table12')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=2]/Install2013-Run2013/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			<tr id="table13_clicked">
			<th></th>
              <th >
                Uninstall2013-Run2011
              </th>
              <td  align="center" onclick="javascript:toggle('table13')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=2]/Uninstall2013-Run2011/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			<tr id="table14_clicked">
			<th></th>
              <th >
                Install-Run2011-VS-Install2013-Run2011
              </th>
              <td  align="center" onclick="javascript:toggle('table14')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=2]/Install-Run2011-VS-Install2013-Run2011/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			<tr id="table15_clicked">
			<th></th>
              <th >
               Uninstall2013-Run2011-VS-Install-Run2011
              </th>
              <td  align="center" onclick="javascript:toggle('table15')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=2]/Uninstall2013-Run20010-VS-Install-Run2011/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			<tr id="table16_clicked">
			<th></th>
              <th >
                Install2013-Run2013-VS-Native2013
              </th>
              <td  align="center" onclick="javascript:toggle('table16')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=2]/Install2013-Run2013-VS-Native2013/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			
			<!--2012-2013-->
            <tr>
              <th style="background-color:{$color_headers}">Test Report</th>
              <th style="background-color:{$color_headers}">Count</th>
            </tr>
            <tr id="table17_clicked">
			  <th>2012-2013</th>
              <th>Install-Run2012</th>
              <td align="center"  onclick="javascript:toggle('table17')" style="cursor:pointer;">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=3]/Install-Run2012/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
            <tr id="table18_clicked">
			<th></th>
              <th >
                Install2013-Run2012
              </th>
              <td  align="center" onclick="javascript:toggle('table18')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=3]/Install2013-Run2012/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			<tr id="table19_clicked">
			<th></th>
              <th >
                Install2013-Run2013
              </th>
              <td  align="center" onclick="javascript:toggle('table19')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=3]/Install2013-Run2013/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			<tr id="table20_clicked">
			<th></th>
              <th >
                Uninstall2013-Run2012
              </th>
              <td  align="center" onclick="javascript:toggle('table20')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=3]/Uninstall2013-Run2012/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			<tr id="table21_clicked">
			<th></th>
              <th >
                Install-Run2012-VS-Install2013-Run2012
              </th>
              <td  align="center" onclick="javascript:toggle('table21')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=3]/Install-Run2012-VS-Install2013-Run2012/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			<tr id="table22_clicked">
			<th></th>
              <th >
               Uninstall2013-Run2012-VS-Install-Run2012 
              </th>
              <td  align="center" onclick="javascript:toggle('table23')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=3]/Uninstall2013-Run2012-VS-Install-Run2012/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
			<tr id="table23_clicked">
			<th></th>
              <th >
                Install2013-Run2013-VS-Native2013
              </th>
              <td  align="center" onclick="javascript:toggle('table23')" style="cursor:pointer">
                <font color="{normalize-space($color_link)}">
                  <u>
                    <xsl:value-of select="count(UG-DG/TestSuite[position()=3]/Install2013-Run2013-VS-Native2013/Test)"></xsl:value-of>
                  </u>
                </font>
              </td>
            </tr>
          </table>
		  
		  
        </div>

 
        <!--MAIN FRAME-->
        <div id="layer3" style="position:absolute; top:100px; left:280px; height:700px; z-index:1; padding:5px; overflow:scroll" >

          <!-- 2010-2013 -->      
		  
          <!-- Install-Run2010 -->
          <table id="table3" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Install-Run2010
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=1]/Install-Run2010/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table>
		  
          <!-- Install2013-Run2010 -->
         <table id="table4" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Install2013-Run2010
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=1]/Install2013-Run2010/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table> 
		  
		  <!--Install2013-Run2013-->
		   <table id="table5" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Install2013-Run2013
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=1]/Install2013-Run2013/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table> 
		  
		  <!--Uninstall2013-Run2010-->
		   <table id="table6" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Uninstall2013-Run2010
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=1]/Uninstall2013-Run2010/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table>
		  
		  
		  <!--Install-Run2010-VS-Install2013-Run2010-->
		   <table id="table7" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Install-Run2010-VS-Install2013-Run2010
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=1]/Install-Run2010-VS-Install2013-Run2010/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table>
		  
		  
          <!--Uninstall2013-Run2010-VS-Install-Run2010-->
		   <table id="table8" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Uninstall2013-Run2010-VS-Install-Run2010
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=1]/Uninstall2013-Run2010-VS-Install-Run2010/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table> 
		  
		    <!--Install2013-Run2013-VS-Native2013-->
		   <table id="table9" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Install2013-Run2013-VS-Native2013
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=1]/Install2013-Run2013-VS-Native2013/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table> 

		
		<!-- 2011-2013 -->      
          <!-- Install-Run2011 -->
          <table id="table10" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Install-Run2011
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=2]/Install-Run2011/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table>
		  
          <!-- Install2013-Run2011 -->
         <table id="table11" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Install2013-Run2011
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=2]/Install2013-Run2011/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table> 
		  
		  <!--Install2013-Run2013-->
		   <table id="table12" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Install2013-Run2013
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=2]/Install2013-Run2013/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table> 
		  
		  <!--Uninstall2013-Run2011-->
		   <table id="table13" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Uninstall2013-Run2011
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=2]/Uninstall2013-Run2011/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table>
		  
		  
		  <!--Install-Run2011-VS-Install2013-Run2011-->
		   <table id="table14" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Install-Run2011-VS-Install2013-Run2011
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=2]/Install-Run2011-VS-Install2013-Run2011/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table>
		  
		  
          <!--Uninstall2013-Run2011-VS-Install-Run2011-->
		   <table id="table15" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Uninstall2013-Run2011-VS-Install-Run2011
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=2]/Uninstall2013-Run2011-VS-Install-Run2011/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table> 
		  
		    <!--Install2013-Run2013-VS-Native2013-->
		   <table id="table16" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Install2013-Run2013-VS-Native2013
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=2]/Install2013-Run2013-VS-Native2013/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table> 

		  <!-- 2012-2013 -->      
          <!-- Install-Run2012 -->
          <table id="table17" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Install-Run2012
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=3]/Install-Run2012/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table>
		  
          <!-- Install2013-Run2012 -->
         <table id="table18" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Install2013-Run2012
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=3]/Install2013-Run2012/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table> 
		  
		  <!--Install2013-Run2013-->
		   <table id="table19" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Install2013-Run2013
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=3]/Install2013-Run2013/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table> 
		  
		  <!--Uninstall2013-Run2012-->
		   <table id="table20" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Uninstall2013-Run2012
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=3]/Uninstall2013-Run2012/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table>
		  
		  
		  <!--Install-Run2012-VS-Install2013-Run2012-->
		   <table id="table21" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Install-Run2012-VS-Install2013-Run2012
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=3]/Install-Run2012-VS-Install2013-Run2012/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table>
		  
		  
          <!--Uninstall2013-Run2012-VS-Install-Run2012-->
		   <table id="table22" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Uninstall2013-Run2012-VS-Install-Run2012
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=3]/Uninstall2013-Run2012-VS-Install-Run2012/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table> 
		  
		    <!--Install2013-Run2013-VS-Native2013-->
		   <table id="table23" border="1"  align="center" style="display:none;empty-cells:show" width="100%">
            <tr>
              <th style="background-color:{$color_headers}" colspan="3">
                Install2013-Run2013-VS-Native2013
              </th>
            </tr>
            <tr style="background-color:{$color_headers}">
              
              <th>Path</th>
              <th>FirstReported</th>
			  <th>CARs</th>
			  <th>Comments</th>
            </tr>
            <xsl:for-each select="UG-DG/TestSuite[position()=3]/Install2013-Run2013-VS-Native2013/Test">
              <!--color trics-->


              <!--color rows-->
              <xsl:variable name="color_var" select="concat('color',position() mod 2)"></xsl:variable>
              <xsl:variable name="color_val">
                <xsl:value-of select="document('')/xsl:stylesheet/xsl:template/html/body/xsl:variable[@name=$color_var]"/>
              </xsl:variable>

              

              <tr style="background-color:{$color_val}">
				<td>
					<xsl:value-of select="@VIPath"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="@FirstReported"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="@CARs"></xsl:value-of>
                </td>
                <td>                  
                    <xsl:value-of select="@Comments"></xsl:value-of>                  
                </td>
              </tr>
            </xsl:for-each>
          </table> 

        </div>
      </body>
    </html>
</xsl:template>
</xsl:stylesheet>
