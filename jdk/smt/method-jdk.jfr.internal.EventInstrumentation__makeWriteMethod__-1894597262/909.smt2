(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1930 0)
(declare-sort var1780 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1930_iterator/-912451715 (var1930) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var1780-init () var1780)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2001940036 (var1780 String String) void)
(declare-const null-var1930 var1930)
(declare-const var3871 var1930) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var3871 null-var1930)))
(define-const var3887 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3887)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3887!1 String)
(assert (= var3887!1 ""))
(assert true)
;(assert (append/672562846 var3887!1 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3887!2 String)
(assert (= var3887!2 (str.++ var3887!1 "(")))
(define-const var2996 Iterator (var1930_iterator/-912451715 var3871)) ; Statement: r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3725 Bool (Iterator_hasNext/-1669924200 var2996)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V") 
(assert (= (ite var3725 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var3887!2 ")V")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V") 
(declare-const var3887!3 String)
(assert (= var3887!3 (str.++ var3887!2 ")V")))
(define-const var302 var1780 var1780-init) ; Statement: $r3 = new jdk.internal.org.objectweb.asm.commons.Method 
(assert true)
(define-const var771 String (toString/-2075883882 var3887!3)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2001940036 var302 "write" var771)) ; Statement: specialinvoke $r3.<jdk.internal.org.objectweb.asm.commons.Method: void <init>(java.lang.String,java.lang.String)>("write", $r4) 

(declare-const var302!1 var1780)
(declare-const var3976 String)
(declare-const var771!1 String)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1930_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var1780-init=([], jdk.internal.org.objectweb.asm.commons.Method), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2001940036=([jdk.internal.org.objectweb.asm.commons.Method, java.lang.String, java.lang.String], void)}
; {var1930=java.util.List, var3871=r1, var3887=$r0, var2996=r2, var3725=$z0, var1780=jdk.internal.org.objectweb.asm.commons.Method, var302=$r3, var771=$r4, var3976="write"}
; {java.util.List=var1930, r1=var3871, $r0=var3887, r2=var2996, $z0=var3725, jdk.internal.org.objectweb.asm.commons.Method=var1780, $r3=var302, $r4=var771, "write"=var3976}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.util.List;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V");	$r3 = new jdk.internal.org.objectweb.asm.commons.Method;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<jdk.internal.org.objectweb.asm.commons.Method: void <init>(java.lang.String,java.lang.String)>("write", $r4);	return $r3
;block_num 3