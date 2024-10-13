(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1550 0)
(declare-sort var3315 0)
(declare-sort var3203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3315 String) void)
(declare-const null-String String)
(declare-const var3203-out var3315)
(declare-const var1938 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1938 null-String)))
(define-const var2033 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2033)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2033!1 String)
(assert (= var2033!1 ""))
(assert true)
(define-const var2878 String (append/672562846 var2033!1 "Usage: PPTX2PNG [options] <.ppt/.pptx/.emf/.wmf file or \u0027stdin\u0027>\n")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Usage: PPTX2PNG [options] <.ppt/.pptx/.emf/.wmf file or \'stdin\'>\n") 
(declare-const var2033!2 String)
(assert (= var2033!2 (str.++ var2033!1 "Usage: PPTX2PNG [options] <.ppt/.pptx/.emf/.wmf file or \u0027stdin\u0027>\n")))
 ; Statement: if r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= var1938 null-String)))) ; Negate: Cond: r1 != null  
(define-const var2101 String "") ; Statement: $r15 = "" 
 ; Statement: goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1056 String (append/672562846 var2878 var2101)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2878!1 String)
(assert (= var2878!1 (str.++ var2878 var2101)))
(assert true)
(define-const var2600 String (append/672562846 var1056 "Options:\n    -scale <float>    scale factor\n    -fixSide <side>   specify side (long,short,width,height) to fix - use <scale> as amount of pixels\n    -slide <integer>  1-based index of a slide to render\n    -format <type>    png,gif,jpg,svg,pdf (,log,null for testing)\n    -outdir <dir>     output directory, defaults to origin of the ppt/pptx file\n    -outfile <file>   output filename, defaults to \u0027")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Options:\n    -scale <float>    scale factor\n    -fixSide <side>   specify side (long,short,width,height) to fix - use <scale> as amount of pixels\n    -slide <integer>  1-based index of a slide to render\n    -format <type>    png,gif,jpg,svg,pdf (,log,null for testing)\n    -outdir <dir>     output directory, defaults to origin of the ppt/pptx file\n    -outfile <file>   output filename, defaults to \'") 
(declare-const var1056!1 String)
(assert (= var1056!1 (str.++ var1056 "Options:\n    -scale <float>    scale factor\n    -fixSide <side>   specify side (long,short,width,height) to fix - use <scale> as amount of pixels\n    -slide <integer>  1-based index of a slide to render\n    -format <type>    png,gif,jpg,svg,pdf (,log,null for testing)\n    -outdir <dir>     output directory, defaults to origin of the ppt/pptx file\n    -outfile <file>   output filename, defaults to \u0027")))
(assert true)
(define-const var2568 String (append/672562846 var2600 "${basename}-${slideno}.${format}")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("${basename}-${slideno}.${format}") 
(declare-const var2600!1 String)
(assert (= var2600!1 (str.++ var2600 "${basename}-${slideno}.${format}")))
(assert true)
(define-const var779 String (append/672562846 var2568 "\u0027\n    -outpat <pattern> output filename pattern, defaults to \u0027")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'\n    -outpat <pattern> output filename pattern, defaults to \'") 
(declare-const var2568!1 String)
(assert (= var2568!1 (str.++ var2568 "\u0027\n    -outpat <pattern> output filename pattern, defaults to \u0027")))
(assert true)
(define-const var2494 String (append/672562846 var779 "${basename}-${slideno}.${format}")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("${basename}-${slideno}.${format}") 
(declare-const var779!1 String)
(assert (= var779!1 (str.++ var779 "${basename}-${slideno}.${format}")))
(assert true)
(define-const var2357 String (append/672562846 var2494 "\u0027\n                      patterns: basename, slideno, format, ext\n    -dump <file>      dump the annotated records to a file\n    -quiet            do not write to console (for normal processing)\n    -ignoreParse      ignore parsing error and continue with the records read until the error\n    -extractEmbedded  extract embedded parts\n    -inputType <type> default input file type (OLE2,WMF,EMF), default is OLE2 = Powerpoint\n                      some files (usually wmf) don\u0027t have a header, i.e. an identifiable file magic\n    -textAsShapes     text elements are saved as shapes in SVG, necessary for variable spacing\n                      often found in math formulas\n    -charset <cs>     sets the default charset to be used, defaults to Windows-1252\n    -emfHeaderBounds  force the usage of the emf header bounds to calculate the bounding box\n    -fontdir <dir>    (PDF only) font directories separated by \u0022;\u0022 - use $HOME for current users home dir\n                      defaults to the usual plattform directories\n    -fontTtf <regex>  (PDF only) regex to match the .ttf filenames\n    -fontMap <map>    \u0022;\u0022-separated list of font mappings <typeface from>:<typeface to>")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'\n                      patterns: basename, slideno, format, ext\n    -dump <file>      dump the annotated records to a file\n    -quiet            do not write to console (for normal processing)\n    -ignoreParse      ignore parsing error and continue with the records read until the error\n    -extractEmbedded  extract embedded parts\n    -inputType <type> default input file type (OLE2,WMF,EMF), default is OLE2 = Powerpoint\n                      some files (usually wmf) don\'t have a header, i.e. an identifiable file magic\n    -textAsShapes     text elements are saved as shapes in SVG, necessary for variable spacing\n                      often found in math formulas\n    -charset <cs>     sets the default charset to be used, defaults to Windows-1252\n    -emfHeaderBounds  force the usage of the emf header bounds to calculate the bounding box\n    -fontdir <dir>    (PDF only) font directories separated by \";\" - use $HOME for current users home dir\n                      defaults to the usual plattform directories\n    -fontTtf <regex>  (PDF only) regex to match the .ttf filenames\n    -fontMap <map>    \";\"-separated list of font mappings <typeface from>:<typeface to>") 
(declare-const var2494!1 String)
(assert (= var2494!1 (str.++ var2494 "\u0027\n                      patterns: basename, slideno, format, ext\n    -dump <file>      dump the annotated records to a file\n    -quiet            do not write to console (for normal processing)\n    -ignoreParse      ignore parsing error and continue with the records read until the error\n    -extractEmbedded  extract embedded parts\n    -inputType <type> default input file type (OLE2,WMF,EMF), default is OLE2 = Powerpoint\n                      some files (usually wmf) don\u0027t have a header, i.e. an identifiable file magic\n    -textAsShapes     text elements are saved as shapes in SVG, necessary for variable spacing\n                      often found in math formulas\n    -charset <cs>     sets the default charset to be used, defaults to Windows-1252\n    -emfHeaderBounds  force the usage of the emf header bounds to calculate the bounding box\n    -fontdir <dir>    (PDF only) font directories separated by \u0022;\u0022 - use $HOME for current users home dir\n                      defaults to the usual plattform directories\n    -fontTtf <regex>  (PDF only) regex to match the .ttf filenames\n    -fontMap <map>    \u0022;\u0022-separated list of font mappings <typeface from>:<typeface to>")))
(assert true)
(define-const var2130 String (toString/-2075883882 var2357)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1212 var3315 var3203-out) ; Statement: $r13 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (println/1773605060 var1212 var2130)) ; Statement: virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var1212!1 var3315)
(declare-const var2130!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1938=r1, var1550=null_type, var2033=$r0, var2878=$r6, var2101=$r15, var1056=$r7, var2600=$r8, var2568=$r9, var779=$r10, var2494=$r11, var2357=$r12, var2130=$r14, var3315=java.io.PrintStream, var3203=java.lang.System, var1212=$r13}
; {r1=var1938, null_type=var1550, $r0=var2033, $r6=var2878, $r15=var2101, $r7=var1056, $r8=var2600, $r9=var2568, $r10=var779, $r11=var2494, $r12=var2357, $r14=var2130, java.io.PrintStream=var3315, java.lang.System=var3203, $r13=var1212}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Usage: PPTX2PNG [options] <.ppt/.pptx/.emf/.wmf file or \'stdin\'>\n");	if r1 != null goto $r2 = new java.lang.StringBuilder;	$r15 = "";	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Options:\n    -scale <float>    scale factor\n    -fixSide <side>   specify side (long,short,width,height) to fix - use <scale> as amount of pixels\n    -slide <integer>  1-based index of a slide to render\n    -format <type>    png,gif,jpg,svg,pdf (,log,null for testing)\n    -outdir <dir>     output directory, defaults to origin of the ppt/pptx file\n    -outfile <file>   output filename, defaults to \'");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("${basename}-${slideno}.${format}");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'\n    -outpat <pattern> output filename pattern, defaults to \'");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("${basename}-${slideno}.${format}");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'\n                      patterns: basename, slideno, format, ext\n    -dump <file>      dump the annotated records to a file\n    -quiet            do not write to console (for normal processing)\n    -ignoreParse      ignore parsing error and continue with the records read until the error\n    -extractEmbedded  extract embedded parts\n    -inputType <type> default input file type (OLE2,WMF,EMF), default is OLE2 = Powerpoint\n                      some files (usually wmf) don\'t have a header, i.e. an identifiable file magic\n    -textAsShapes     text elements are saved as shapes in SVG, necessary for variable spacing\n                      often found in math formulas\n    -charset <cs>     sets the default charset to be used, defaults to Windows-1252\n    -emfHeaderBounds  force the usage of the emf header bounds to calculate the bounding box\n    -fontdir <dir>    (PDF only) font directories separated by \";\" - use $HOME for current users home dir\n                      defaults to the usual plattform directories\n    -fontTtf <regex>  (PDF only) regex to match the .ttf filenames\n    -fontMap <map>    \";\"-separated list of font mappings <typeface from>:<typeface to>");	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>($r14);	return
;block_num 3