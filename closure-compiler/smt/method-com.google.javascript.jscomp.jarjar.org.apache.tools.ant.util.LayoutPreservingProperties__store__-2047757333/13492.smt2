(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var799 0)
(declare-sort var2211 0)
(declare-sort var547 0)
(declare-sort var3854 0)
(declare-sort var1723 0)
(declare-sort var739 0)
(declare-sort var904 0)
(declare-sort var3329 0)
(declare-sort var921 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3854-init () var3854)
(declare-fun <init>/1982415372 (var3854 var2211 var1723) void)
(declare-fun logicalLines/595708403 (var799) var904)
(declare-fun var904_size/-959786421 (var904) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3329_getDateForHeader/1166021712 () String)
(declare-fun eol/595708403 (var799) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun write/654681022 (var921 String) void)
(declare-fun cast-from-var3854-to-var921 (var3854) var921)
(declare-fun var904_subList/1175967931 (var904 Int Int) var904)
(declare-fun var904_iterator/-912451715 (var904) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun close/-2106459009 (var3854) void)
(declare-const null-var799 var799)
(declare-const null-var2211 var2211)
(declare-const null-String String)
(declare-const var739-ISO_8859_1 var1723)
(declare-const var2016 var799) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties 
(assert (not (= var2016 null-var799)))
(declare-const var1526 var2211) ; Statement: r1 := @parameter0: java.io.OutputStream 
(assert (not (= var1526 null-var2211)))
(declare-const var3944 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3944 null-String)))
(define-const var487 var3854 var3854-init) ; Statement: $r0 = new java.io.OutputStreamWriter 
(define-const var2315 var1723 var739-ISO_8859_1) ; Statement: $r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1> 
(assert true)
;(assert (<init>/1982415372 var487 var1526 var2315)) ; Statement: specialinvoke $r0.<java.io.OutputStreamWriter: void <init>(java.io.OutputStream,java.nio.charset.Charset)>(r1, $r2) 

(declare-const var487!1 var3854)
(declare-const var1526!1 var2211)
(declare-const var2315!1 var1723)
(define-const var3686 Int 0) ; Statement: i1 = 0 
(define-const var1622 Int 0) ; Statement: b3 = 0 
(define-const var301 Int 0) ; Statement: b2 = 0 
(define-const var3226 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var1666 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var3829 var904 (logicalLines/595708403 var2016)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties: java.util.List logicalLines> 
(define-const var3860 Int (var904_size/-959786421 var3829)) ; Statement: i0 = interfaceinvoke $r4.<java.util.List: int size()>() 
 ; Statement: if r5 == null goto (branch) 
(assert (= var3944 null-String)) ; Cond: r5 == null 
 ; Statement: if i0 <= z8 goto $r37 = new java.lang.StringBuilder 
(assert (<= var3860 (ite var3226 1 0))) ; Cond: i0 <= z8 
(define-const var196 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var196)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var196!1 String)
(assert (= var196!1 ""))
(assert true)
(define-const var1682 String (append/672562846 var196!1 "#")) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var196!2 String)
(assert (= var196!2 (str.++ var196!1 "#")))
(define-const var563 String var3329_getDateForHeader/1166021712) ; Statement: $r39 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils: java.lang.String getDateForHeader()>() 
(assert true)
(define-const var1374 String (append/672562846 var1682 var563)) ; Statement: $r40 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var1682!1 String)
(assert (= var1682!1 (str.++ var1682 var563)))
(define-const var1039 String (eol/595708403 var2016)) ; Statement: $r41 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties: java.lang.String eol> 
(assert true)
(define-const var3733 String (append/672562846 var1374 var1039)) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1374!1 String)
(assert (= var1374!1 (str.++ var1374 var1039)))
(assert true)
(define-const var2907 String (toString/-2075883882 var3733)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (write/654681022 (cast-from-var3854-to-var921 var487!1) var2907)) ; Statement: virtualinvoke $r0.<java.io.OutputStreamWriter: void write(java.lang.String)>($r43) 

(declare-const var487!2 var3854)
(declare-const var2907!1 String)
(define-const var2676 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var3264 var904 (logicalLines/595708403 var2016)) ; Statement: $r44 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties: java.util.List logicalLines> 
(define-const var570 var904 (var904_subList/1175967931 var3264 var3686 var3860)) ; Statement: $r45 = interfaceinvoke $r44.<java.util.List: java.util.List subList(int,int)>(i1, i0) 
(define-const var3326 Iterator (var904_iterator/-912451715 var570)) ; Statement: $r46 = interfaceinvoke $r45.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2326 Bool (Iterator_hasNext/-1669924200 var3326)) ; Statement: $z6 = interfaceinvoke $r46.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z6 == 0 goto virtualinvoke $r0.<java.io.OutputStreamWriter: void close()>() 
(assert (= (ite var2326 1 0) 0)) ; Cond: $z6 == 0 
(assert true)
;(assert (close/-2106459009 var487!2)) ; Statement: virtualinvoke $r0.<java.io.OutputStreamWriter: void close()>() 

(declare-const var487!3 var3854)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3854-init=([], java.io.OutputStreamWriter), <init>/1982415372=([java.io.OutputStreamWriter, java.io.OutputStream, java.nio.charset.Charset], void), logicalLines/595708403=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties], java.util.List), var904_size/-959786421=([java.util.List], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3329_getDateForHeader/1166021712=([], java.lang.String), eol/595708403=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), write/654681022=([java.io.Writer, java.lang.String], void), cast-from-var3854-to-var921=([java.io.OutputStreamWriter], java.io.Writer), var904_subList/1175967931=([java.util.List, int, int], java.util.List), var904_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), close/-2106459009=([java.io.OutputStreamWriter], void)}
; {var799=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties, var2016=r3, var2211=java.io.OutputStream, var1526=r1, var3944=r5, var547=null_type, var3854=java.io.OutputStreamWriter, var487=$r0, var1723=java.nio.charset.Charset, var739=java.nio.charset.StandardCharsets, var2315=$r2, var3686=i1, var1622=b3, var301=b2, var3226=z8, var1666=z7, var904=java.util.List, var3829=$r4, var3860=i0, var196=$r37, var1682=$r38, var3329=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils, var563=$r39, var1374=$r40, var1039=$r41, var3733=$r42, var2907=$r43, var921=java.io.Writer, var2676=z5, var3264=$r44, var570=$r45, var3326=$r46, var2326=$z6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties=var799, r3=var2016, java.io.OutputStream=var2211, r1=var1526, r5=var3944, null_type=var547, java.io.OutputStreamWriter=var3854, $r0=var487, java.nio.charset.Charset=var1723, java.nio.charset.StandardCharsets=var739, $r2=var2315, i1=var3686, b3=var1622, b2=var301, z8=var3226, z7=var1666, java.util.List=var904, $r4=var3829, i0=var3860, $r37=var196, $r38=var1682, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils=var3329, $r39=var563, $r40=var1374, $r41=var1039, $r42=var3733, $r43=var2907, java.io.Writer=var921, z5=var2676, $r44=var3264, $r45=var570, $r46=var3326, $z6=var2326}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties;	r1 := @parameter0: java.io.OutputStream;	r5 := @parameter1: java.lang.String;	$r0 = new java.io.OutputStreamWriter;	$r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1>;	specialinvoke $r0.<java.io.OutputStreamWriter: void <init>(java.io.OutputStream,java.nio.charset.Charset)>(r1, $r2);	i1 = 0;	b3 = 0;	b2 = 0;	z8 = 0;	z7 = 0;	$r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties: java.util.List logicalLines>;	i0 = interfaceinvoke $r4.<java.util.List: int size()>();	if r5 == null goto (branch);	if i0 <= z8 goto $r37 = new java.lang.StringBuilder;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r39 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils: java.lang.String getDateForHeader()>();	$r40 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r41 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties: java.lang.String eol>;	$r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.io.OutputStreamWriter: void write(java.lang.String)>($r43);	z5 = 0;	$r44 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties: java.util.List logicalLines>;	$r45 = interfaceinvoke $r44.<java.util.List: java.util.List subList(int,int)>(i1, i0);	$r46 = interfaceinvoke $r45.<java.util.List: java.util.Iterator iterator()>();	$z6 = interfaceinvoke $r46.<java.util.Iterator: boolean hasNext()>();	if $z6 == 0 goto virtualinvoke $r0.<java.io.OutputStreamWriter: void close()>();	virtualinvoke $r0.<java.io.OutputStreamWriter: void close()>();	return
;block_num 5