(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var799 0)
(declare-sort var113 0)
(declare-sort var1484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/-2113169594 (var799) var1484)
(declare-fun var1484_access$100/894178095 (var1484) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var799 var799)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2711 var799) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii$ExtMapper 
(assert (not (= var2711 null-var799)))
(declare-const var768 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var768 null-String)))
(assert true)
(define-const var95 Int (lastIndexOf/-1292097097 var768 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 < 0 goto $r1 = newarray (java.lang.String)[1] 
(assert (< var95 0)) ; Cond: i0 < 0 
(define-const var2124 (Array Int String) arr-String-init) ; Statement: $r1 = newarray (java.lang.String)[1] 
(define-const var1350 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1350)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1350!1 String)
(assert (= var1350!1 ""))
(assert true)
(define-const var1884 String (append/672562846 var1350!1 var768)) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1350!2 String)
(assert (= var1350!2 (str.++ var1350!1 var768)))
(define-const var76 var1484 (this$0/-2113169594 var2711)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii$ExtMapper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii this$0> 
(define-const var782 String (var1484_access$100/894178095 var76)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii: java.lang.String access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii)>($r4) 
(assert true)
(define-const var354 String (append/672562846 var1884 var782)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1884!1 String)
(assert (= var1884!1 (str.++ var1884 var782)))
(assert true)
(define-const var2158 String (toString/-2075883882 var354)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2124!1 (Array Int String))
(assert (not (= var2124!1 null-__Array__Int__String__)))
(assert (= (select var2124!1 0) var2158)) ; Statement: $r1[0] = $r8 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), arr-String-init=([], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/-2113169594=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii$ExtMapper], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii), var1484_access$100/894178095=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var799=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii$ExtMapper, var2711=r3, var768=r0, var113=null_type, var95=i0, var2124=$r1, var1350=$r2, var1884=$r6, var1484=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii, var76=$r4, var782=$r5, var354=$r7, var2158=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii$ExtMapper=var799, r3=var2711, r0=var768, null_type=var113, i0=var95, $r1=var2124, $r2=var1350, $r6=var1884, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii=var1484, $r4=var76, $r5=var782, $r7=var354, $r8=var2158}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii$ExtMapper;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	if i0 < 0 goto $r1 = newarray (java.lang.String)[1];	$r1 = newarray (java.lang.String)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii$ExtMapper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii this$0>;	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii: java.lang.String access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r8;	return $r1
;block_num 2