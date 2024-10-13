(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1372 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getNameLength/-2134253578 (var1372) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun appendName/1063954209 (var1372 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1372 var1372)
(declare-const var83 var1372) ; Statement: r0 := @this: jdk.internal.dynalink.support.AbstractCallSiteDescriptor 
(assert (not (= var83 null-var1372)))
(define-const var438 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
(define-const var3601 Int (getNameLength/-2134253578 var83)) ; Statement: $i0 = specialinvoke r0.<jdk.internal.dynalink.support.AbstractCallSiteDescriptor: int getNameLength()>() 
(assert true)
;(assert (<init>/543593434 var438 var3601)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var438!1 String)
(declare-const var3601!1 Int)
(assert true)
(define-const var3879 String (appendName/1063954209 var83 var438!1)) ; Statement: $r2 = specialinvoke r0.<jdk.internal.dynalink.support.AbstractCallSiteDescriptor: java.lang.StringBuilder appendName(java.lang.StringBuilder)>($r1) 
(assert true)
(define-const var1316 String (toString/-2075883882 var3879)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getNameLength/-2134253578=([jdk.internal.dynalink.support.AbstractCallSiteDescriptor], int), <init>/543593434=([java.lang.StringBuilder, int], void), appendName/1063954209=([jdk.internal.dynalink.support.AbstractCallSiteDescriptor, java.lang.StringBuilder], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1372=jdk.internal.dynalink.support.AbstractCallSiteDescriptor, var83=r0, var438=$r1, var3601=$i0, var3879=$r2, var1316=$r3}
; {jdk.internal.dynalink.support.AbstractCallSiteDescriptor=var1372, r0=var83, $r1=var438, $i0=var3601, $r2=var3879, $r3=var1316}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.dynalink.support.AbstractCallSiteDescriptor;	$r1 = new java.lang.StringBuilder;	$i0 = specialinvoke r0.<jdk.internal.dynalink.support.AbstractCallSiteDescriptor: int getNameLength()>();	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>($i0);	$r2 = specialinvoke r0.<jdk.internal.dynalink.support.AbstractCallSiteDescriptor: java.lang.StringBuilder appendName(java.lang.StringBuilder)>($r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1