(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var141 0)
(declare-sort var252 0)
(declare-sort var2530 0)
(declare-sort var191 0)
(declare-sort var1706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1706) String)
(declare-fun cast-from-var2530-to-var1706 (var2530) var1706)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getValue/-1583528360 (var252 String) String)
(declare-fun var191_getTrimmedString/-1301026430 (String) String)
(declare-const null-String String)
(declare-const null-var252 var252)
(declare-const var191-EXTENSION_NAME var2530)
(declare-const var1376 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1376 null-String)))
(declare-const var3545 var252) ; Statement: r6 := @parameter1: java.util.jar.Attributes 
(assert (not (= var3545 null-var252)))
(define-const var2107 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2107)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2107!1 String)
(assert (= var2107!1 ""))
(assert true)
(define-const var3496 String (append/672562846 var2107!1 var1376)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2107!2 String)
(assert (= var2107!2 (str.++ var2107!1 var1376)))
(define-const var3835 var2530 var191-EXTENSION_NAME) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.util.jar.Attributes$Name EXTENSION_NAME> 
(assert true)
(define-const var2421 String (append/-1031950772 var3496 (cast-from-var2530-to-var1706 var3835))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3496!1 String)
(assert (str.prefixof var3496 var3496!1))
(assert true)
(define-const var2048 String (toString/-2075883882 var2421)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3152 String (getValue/-1583528360 var3545 var2048)) ; Statement: $r7 = virtualinvoke r6.<java.util.jar.Attributes: java.lang.String getValue(java.lang.String)>(r5) 
(define-const var1890 String (var191_getTrimmedString/-1301026430 var3152)) ; Statement: r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getTrimmedString(java.lang.String)>($r7) 
 ; Statement: if null != r8 goto $r9 = new java.lang.StringBuilder 
(assert (not (not (= null-String var1890)))) ; Negate: Cond: null != r8  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2530-to-var1706=([java.util.jar.Attributes$Name], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getValue/-1583528360=([java.util.jar.Attributes, java.lang.String], java.lang.String), var191_getTrimmedString/-1301026430=([java.lang.String], java.lang.String)}
; {var1376=r1, var141=null_type, var252=java.util.jar.Attributes, var3545=r6, var2107=$r0, var3496=$r3, var2530=java.util.jar.Attributes$Name, var191=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension, var3835=$r2, var1706=java.lang.Object, var2421=$r4, var2048=r5, var3152=$r7, var1890=r8}
; {r1=var1376, null_type=var141, java.util.jar.Attributes=var252, r6=var3545, $r0=var2107, $r3=var3496, java.util.jar.Attributes$Name=var2530, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension=var191, $r2=var3835, java.lang.Object=var1706, $r4=var2421, r5=var2048, $r7=var3152, r8=var1890}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r6 := @parameter1: java.util.jar.Attributes;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r2 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.util.jar.Attributes$Name EXTENSION_NAME>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke r6.<java.util.jar.Attributes: java.lang.String getValue(java.lang.String)>(r5);	r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getTrimmedString(java.lang.String)>($r7);	if null != r8 goto $r9 = new java.lang.StringBuilder;	return null
;block_num 2