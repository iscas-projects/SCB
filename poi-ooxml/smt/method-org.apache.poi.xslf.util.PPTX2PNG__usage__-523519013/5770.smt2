(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3608 0)
(declare-sort var1549 0)
(declare-sort var3824 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1549 String) void)
(declare-const null-String String)
(declare-const var3824-out var1549)
(declare-const var1364 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1364 null-String)))
(define-const var918 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var918)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var918!1 String)
(assert (= var918!1 ""))
(assert true)
(define-const var2203 String (append/672562846 var918!1 "Usage: PPTX2PNG [options] <.ppt/.pptx/.emf/.wmf file or \u0027stdin\u0027>\n")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Usage: PPTX2PNG [options] <.ppt/.pptx/.emf/.wmf file or \'stdin\'>\n") 
(declare-const var918!2 String)
(assert (= var918!2 (str.++ var918!1 "Usage: PPTX2PNG [options] <.ppt/.pptx/.emf/.wmf file or \u0027stdin\u0027>\n")))
 ; Statement: if r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var1364 null-String))) ; Cond: r1 != null 
(define-const var2368 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2368)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2368!1 String)
(assert (= var2368!1 ""))
(assert true)
(define-const var1957 String (append/672562846 var2368!1 "Error: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error: ") 
(declare-const var2368!2 String)
(assert (= var2368!2 (str.++ var2368!1 "Error: ")))
(assert true)
(define-const var1047 String (append/672562846 var1957 var1364)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1957!1 String)
(assert (= var1957!1 (str.++ var1957 var1364)))
(assert true)
(define-const var2531 String (append/672562846 var1047 "\n")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1047!1 String)
(assert (= var1047!1 (str.++ var1047 "\n")))
(assert true)
(define-const var610 String (toString/-2075883882 var2531)) ; Statement: $r15 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3819 String (append/672562846 var2203 var610)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2203!1 String)
(assert (= var2203!1 (str.++ var2203 var610)))
(assert true)
(define-const var771 String (append/672562846 var3819 "Options:\n    -scale <float>    scale factor\n    -fixSide <side>   specify side (long,short,width,height) to fix - use <scale> as amount of pixels\n    -slide <integer>  1-based index of a slide to render\n    -format <type>    png,gif,jpg,svg,pdf (,log,null for testing)\n    -outdir <dir>     output directory, defaults to origin of the ppt/pptx file\n    -outfile <file>   output filename, defaults to \u0027")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Options:\n    -scale <float>    scale factor\n    -fixSide <side>   specify side (long,short,width,height) to fix - use <scale> as amount of pixels\n    -slide <integer>  1-based index of a slide to render\n    -format <type>    png,gif,jpg,svg,pdf (,log,null for testing)\n    -outdir <dir>     output directory, defaults to origin of the ppt/pptx file\n    -outfile <file>   output filename, defaults to \'") 
(declare-const var3819!1 String)
(assert (= var3819!1 (str.++ var3819 "Options:\n    -scale <float>    scale factor\n    -fixSide <side>   specify side (long,short,width,height) to fix - use <scale> as amount of pixels\n    -slide <integer>  1-based index of a slide to render\n    -format <type>    png,gif,jpg,svg,pdf (,log,null for testing)\n    -outdir <dir>     output directory, defaults to origin of the ppt/pptx file\n    -outfile <file>   output filename, defaults to \u0027")))
(assert true)
(define-const var1798 String (append/672562846 var771 "${basename}-${slideno}.${format}")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("${basename}-${slideno}.${format}") 
(declare-const var771!1 String)
(assert (= var771!1 (str.++ var771 "${basename}-${slideno}.${format}")))
(assert true)
(define-const var3395 String (append/672562846 var1798 "\u0027\n    -outpat <pattern> output filename pattern, defaults to \u0027")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'\n    -outpat <pattern> output filename pattern, defaults to \'") 
(declare-const var1798!1 String)
(assert (= var1798!1 (str.++ var1798 "\u0027\n    -outpat <pattern> output filename pattern, defaults to \u0027")))
(assert true)
(define-const var1388 String (append/672562846 var3395 "${basename}-${slideno}.${format}")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("${basename}-${slideno}.${format}") 
(declare-const var3395!1 String)
(assert (= var3395!1 (str.++ var3395 "${basename}-${slideno}.${format}")))
(assert true)
(define-const var2007 String (append/672562846 var1388 "\u0027\n                      patterns: basename, slideno, format, ext\n    -dump <file>      dump the annotated records to a file\n    -quiet            do not write to console (for normal processing)\n    -ignoreParse      ignore parsing error and continue with the records read until the error\n    -extractEmbedded  extract embedded parts\n    -inputType <type> default input file type (OLE2,WMF,EMF), default is OLE2 = Powerpoint\n                      some files (usually wmf) don\u0027t have a header, i.e. an identifiable file magic\n    -textAsShapes     text elements are saved as shapes in SVG, necessary for variable spacing\n                      often found in math formulas\n    -charset <cs>     sets the default charset to be used, defaults to Windows-1252\n    -emfHeaderBounds  force the usage of the emf header bounds to calculate the bounding box\n    -fontdir <dir>    (PDF only) font directories separated by \u0022;\u0022 - use $HOME for current users home dir\n                      defaults to the usual plattform directories\n    -fontTtf <regex>  (PDF only) regex to match the .ttf filenames\n    -fontMap <map>    \u0022;\u0022-separated list of font mappings <typeface from>:<typeface to>")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'\n                      patterns: basename, slideno, format, ext\n    -dump <file>      dump the annotated records to a file\n    -quiet            do not write to console (for normal processing)\n    -ignoreParse      ignore parsing error and continue with the records read until the error\n    -extractEmbedded  extract embedded parts\n    -inputType <type> default input file type (OLE2,WMF,EMF), default is OLE2 = Powerpoint\n                      some files (usually wmf) don\'t have a header, i.e. an identifiable file magic\n    -textAsShapes     text elements are saved as shapes in SVG, necessary for variable spacing\n                      often found in math formulas\n    -charset <cs>     sets the default charset to be used, defaults to Windows-1252\n    -emfHeaderBounds  force the usage of the emf header bounds to calculate the bounding box\n    -fontdir <dir>    (PDF only) font directories separated by \";\" - use $HOME for current users home dir\n                      defaults to the usual plattform directories\n    -fontTtf <regex>  (PDF only) regex to match the .ttf filenames\n    -fontMap <map>    \";\"-separated list of font mappings <typeface from>:<typeface to>") 
(declare-const var1388!1 String)
(assert (= var1388!1 (str.++ var1388 "\u0027\n                      patterns: basename, slideno, format, ext\n    -dump <file>      dump the annotated records to a file\n    -quiet            do not write to console (for normal processing)\n    -ignoreParse      ignore parsing error and continue with the records read until the error\n    -extractEmbedded  extract embedded parts\n    -inputType <type> default input file type (OLE2,WMF,EMF), default is OLE2 = Powerpoint\n                      some files (usually wmf) don\u0027t have a header, i.e. an identifiable file magic\n    -textAsShapes     text elements are saved as shapes in SVG, necessary for variable spacing\n                      often found in math formulas\n    -charset <cs>     sets the default charset to be used, defaults to Windows-1252\n    -emfHeaderBounds  force the usage of the emf header bounds to calculate the bounding box\n    -fontdir <dir>    (PDF only) font directories separated by \u0022;\u0022 - use $HOME for current users home dir\n                      defaults to the usual plattform directories\n    -fontTtf <regex>  (PDF only) regex to match the .ttf filenames\n    -fontMap <map>    \u0022;\u0022-separated list of font mappings <typeface from>:<typeface to>")))
(assert true)
(define-const var754 String (toString/-2075883882 var2007)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2645 var1549 var3824-out) ; Statement: $r13 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (println/1773605060 var2645 var754)) ; Statement: virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var2645!1 var1549)
(declare-const var754!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1364=r1, var3608=null_type, var918=$r0, var2203=$r6, var2368=$r2, var1957=$r3, var1047=$r4, var2531=$r5, var610=$r15, var3819=$r7, var771=$r8, var1798=$r9, var3395=$r10, var1388=$r11, var2007=$r12, var754=$r14, var1549=java.io.PrintStream, var3824=java.lang.System, var2645=$r13}
; {r1=var1364, null_type=var3608, $r0=var918, $r6=var2203, $r2=var2368, $r3=var1957, $r4=var1047, $r5=var2531, $r15=var610, $r7=var3819, $r8=var771, $r9=var1798, $r10=var3395, $r11=var1388, $r12=var2007, $r14=var754, java.io.PrintStream=var1549, java.lang.System=var3824, $r13=var2645}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Usage: PPTX2PNG [options] <.ppt/.pptx/.emf/.wmf file or \'stdin\'>\n");	if r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r15 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Options:\n    -scale <float>    scale factor\n    -fixSide <side>   specify side (long,short,width,height) to fix - use <scale> as amount of pixels\n    -slide <integer>  1-based index of a slide to render\n    -format <type>    png,gif,jpg,svg,pdf (,log,null for testing)\n    -outdir <dir>     output directory, defaults to origin of the ppt/pptx file\n    -outfile <file>   output filename, defaults to \'");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("${basename}-${slideno}.${format}");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'\n    -outpat <pattern> output filename pattern, defaults to \'");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("${basename}-${slideno}.${format}");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'\n                      patterns: basename, slideno, format, ext\n    -dump <file>      dump the annotated records to a file\n    -quiet            do not write to console (for normal processing)\n    -ignoreParse      ignore parsing error and continue with the records read until the error\n    -extractEmbedded  extract embedded parts\n    -inputType <type> default input file type (OLE2,WMF,EMF), default is OLE2 = Powerpoint\n                      some files (usually wmf) don\'t have a header, i.e. an identifiable file magic\n    -textAsShapes     text elements are saved as shapes in SVG, necessary for variable spacing\n                      often found in math formulas\n    -charset <cs>     sets the default charset to be used, defaults to Windows-1252\n    -emfHeaderBounds  force the usage of the emf header bounds to calculate the bounding box\n    -fontdir <dir>    (PDF only) font directories separated by \";\" - use $HOME for current users home dir\n                      defaults to the usual plattform directories\n    -fontTtf <regex>  (PDF only) regex to match the .ttf filenames\n    -fontMap <map>    \";\"-separated list of font mappings <typeface from>:<typeface to>");	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>($r14);	return
;block_num 3