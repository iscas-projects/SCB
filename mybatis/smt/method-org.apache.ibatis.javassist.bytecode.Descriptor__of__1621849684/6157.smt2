(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1854 0)
(declare-sort var3707 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3707_toDescriptor/-1436769534 (String var1854) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1854 var1854)
(declare-const var1737 var1854) ; Statement: r1 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1737 null-var1854)))
(define-const var1236 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1236)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1236!1 String)
(assert (= var1236!1 ""))
;(assert (var3707_toDescriptor/-1436769534 var1236!1 var1737)) ; Statement: staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: void toDescriptor(java.lang.StringBuilder,org.apache.ibatis.javassist.CtClass)>($r0, r1) 

(declare-const var1236!2 String)
(declare-const var1737!1 var1854)
(assert true)
(define-const var3280 String (toString/-2075883882 var1236!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3707_toDescriptor/-1436769534=([java.lang.StringBuilder, org.apache.ibatis.javassist.CtClass], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1854=org.apache.ibatis.javassist.CtClass, var1737=r1, var1236=$r0, var3707=org.apache.ibatis.javassist.bytecode.Descriptor, var3280=$r2}
; {org.apache.ibatis.javassist.CtClass=var1854, r1=var1737, $r0=var1236, org.apache.ibatis.javassist.bytecode.Descriptor=var3707, $r2=var3280}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.apache.ibatis.javassist.CtClass;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: void toDescriptor(java.lang.StringBuilder,org.apache.ibatis.javassist.CtClass)>($r0, r1);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1