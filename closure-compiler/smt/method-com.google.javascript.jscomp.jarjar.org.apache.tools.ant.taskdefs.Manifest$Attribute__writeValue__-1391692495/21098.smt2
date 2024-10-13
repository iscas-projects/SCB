(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3087 0)
(declare-sort var2469 0)
(declare-sort var2416 0)
(declare-sort var2562 0)
(declare-sort var1867 0)
(declare-sort var3765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/146580643 (var3087) String)
(declare-fun getBytes/-163691139 (String var2562) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var3765-init () var3765)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3765 String) void)
(declare-const null-var3087 var3087)
(declare-const null-var2469 var2469)
(declare-const null-String String)
(declare-const var1867-JAR_CHARSET var2562)
(declare-const var1547 var3087) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute 
(assert (not (= var1547 null-var3087)))
(declare-const var2177 var2469) ; Statement: r10 := @parameter0: java.io.PrintWriter 
(assert (not (= var2177 null-var2469)))
(declare-const var1136 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var1136 null-String)))
(define-const var1068 String (name/146580643 var1547)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.lang.String name> 
(define-const var2463 var2562 var1867-JAR_CHARSET) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.nio.charset.Charset JAR_CHARSET> 
(assert true)
(define-const var3199 (Array Int Int) (getBytes/-163691139 var1068 var2463)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1) 
(define-const var1677 Int (getLength-Arr-Int-1 var3199)) ; Statement: i0 = lengthof $r3 
 ; Statement: if i0 <= 68 goto $r58 = new java.lang.StringBuilder 
(assert (not (<= var1677 68))) ; Negate: Cond: i0 <= 68  
 ; Statement: if i0 <= 70 goto $r56 = new java.lang.StringBuilder 
(assert (not (<= var1677 70))) ; Negate: Cond: i0 <= 70  
(define-const var1003 var3765 var3765-init) ; Statement: $r55 = new java.io.IOException 
(define-const var774 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var774)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var774!1 String)
(assert (= var774!1 ""))
(assert true)
(define-const var2744 String (append/672562846 var774!1 "Unable to write manifest line ")) ; Statement: $r43 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to write manifest line ") 
(declare-const var774!2 String)
(assert (= var774!2 (str.++ var774!1 "Unable to write manifest line ")))
(define-const var821 String (name/146580643 var1547)) ; Statement: $r42 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.lang.String name> 
(assert true)
(define-const var955 String (append/672562846 var2744 var821)) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r42) 
(declare-const var2744!1 String)
(assert (= var2744!1 (str.++ var2744 var821)))
(assert true)
(define-const var1287 String (append/672562846 var955 ": ")) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var955!1 String)
(assert (= var955!1 (str.++ var955 ": ")))
(assert true)
(define-const var1290 String (append/672562846 var1287 var1136)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1287!1 String)
(assert (= var1287!1 (str.++ var1287 var1136)))
(assert true)
(define-const var1188 String (toString/-2075883882 var1290)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1003 var1188)) ; Statement: specialinvoke $r55.<java.io.IOException: void <init>(java.lang.String)>($r47) 

(declare-const var1003!1 var3765)
(declare-const var1188!1 String)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {name/146580643=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute], java.lang.String), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), getLength-Arr-Int-1=([byte[]], int), var3765-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var3087=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute, var1547=r0, var2469=java.io.PrintWriter, var2177=r10, var1136=r7, var2416=null_type, var1068=$r2, var2562=java.nio.charset.Charset, var1867=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest, var2463=$r1, var3199=$r3, var1677=i0, var3765=java.io.IOException, var1003=$r55, var774=$r54, var2744=$r43, var821=$r42, var955=$r44, var1287=$r45, var1290=$r46, var1188=$r47}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute=var3087, r0=var1547, java.io.PrintWriter=var2469, r10=var2177, r7=var1136, null_type=var2416, $r2=var1068, java.nio.charset.Charset=var2562, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest=var1867, $r1=var2463, $r3=var3199, i0=var1677, java.io.IOException=var3765, $r55=var1003, $r54=var774, $r43=var2744, $r42=var821, $r44=var955, $r45=var1287, $r46=var1290, $r47=var1188}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute;	r10 := @parameter0: java.io.PrintWriter;	r7 := @parameter1: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.lang.String name>;	$r1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.nio.charset.Charset JAR_CHARSET>;	$r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1);	i0 = lengthof $r3;	if i0 <= 68 goto $r58 = new java.lang.StringBuilder;	if i0 <= 70 goto $r56 = new java.lang.StringBuilder;	$r55 = new java.io.IOException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r43 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to write manifest line ");	$r42 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.lang.String name>;	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r42);	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<java.io.IOException: void <init>(java.lang.String)>($r47);	throw $r55
;block_num 3