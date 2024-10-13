(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1462 0)
(declare-sort var115 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1462_iterator/-912451715 (var1462) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var115-init () var115)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2001940036 (var115 String String) void)
(declare-const null-var1462 var1462)
(declare-const var1203 var1462) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var1203 null-var1462)))
(define-const var3179 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3179)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3179!1 String)
(assert (= var3179!1 ""))
(assert true)
;(assert (append/672562846 var3179!1 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3179!2 String)
(assert (= var3179!2 (str.++ var3179!1 "(")))
(define-const var2578 Iterator (var1462_iterator/-912451715 var1203)) ; Statement: r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3888 Bool (Iterator_hasNext/-1669924200 var2578)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V") 
(assert (= (ite var3888 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var3179!2 ")V")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V") 
(declare-const var3179!3 String)
(assert (= var3179!3 (str.++ var3179!2 ")V")))
(define-const var884 var115 var115-init) ; Statement: $r3 = new jdk.internal.org.objectweb.asm.commons.Method 
(assert true)
(define-const var279 String (toString/-2075883882 var3179!3)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2001940036 var884 "write" var279)) ; Statement: specialinvoke $r3.<jdk.internal.org.objectweb.asm.commons.Method: void <init>(java.lang.String,java.lang.String)>("write", $r4) 

(declare-const var884!1 var115)
(declare-const var2944 String)
(declare-const var279!1 String)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1462_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var115-init=([], jdk.internal.org.objectweb.asm.commons.Method), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2001940036=([jdk.internal.org.objectweb.asm.commons.Method, java.lang.String, java.lang.String], void)}
; {var1462=java.util.List, var1203=r1, var3179=$r0, var2578=r2, var3888=$z0, var115=jdk.internal.org.objectweb.asm.commons.Method, var884=$r3, var279=$r4, var2944="write"}
; {java.util.List=var1462, r1=var1203, $r0=var3179, r2=var2578, $z0=var3888, jdk.internal.org.objectweb.asm.commons.Method=var115, $r3=var884, $r4=var279, "write"=var2944}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.util.List;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V");	$r3 = new jdk.internal.org.objectweb.asm.commons.Method;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<jdk.internal.org.objectweb.asm.commons.Method: void <init>(java.lang.String,java.lang.String)>("write", $r4);	return $r3
;block_num 3