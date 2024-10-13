(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1335 0)
(declare-sort var2019 0)
(declare-sort var3989 0)
(declare-sort var2668 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-444743116 (var1335) var3989)
(declare-fun var3989_access$000/-1583365536 (var3989) String)
(declare-fun var2668-init () var2668)
(declare-fun <init>/1087086210 (var2668 String) void)
(declare-const null-var1335 var1335)
(declare-const null-String String)
(declare-const var833 var1335) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader$2 
(assert (not (= var833 null-var1335)))
(declare-const var3717 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3717 null-String)))
(define-const var285 var3989 (this$0/-444743116 var833)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader$2: jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader this$0> 
(define-const var2126 String (var3989_access$000/-1583365536 var285)) ; Statement: $r3 = staticinvoke <jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader: java.lang.String access$000(jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader)>($r2) 
(assert true)
(define-const var2674 Bool (= var3717 var2126)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.ClassNotFoundException 
(assert (= (ite var2674 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3543 var2668 var2668-init) ; Statement: $r4 = new java.lang.ClassNotFoundException 
(assert true)
;(assert (<init>/1087086210 var3543 var3717)) ; Statement: specialinvoke $r4.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>(r0) 

(declare-const var3543!1 var2668)
(declare-const var3717!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-444743116=([jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader$2], jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader), var3989_access$000/-1583365536=([jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader], java.lang.String), var2668-init=([], java.lang.ClassNotFoundException), <init>/1087086210=([java.lang.ClassNotFoundException, java.lang.String], void)}
; {var1335=jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader$2, var833=r1, var3717=r0, var2019=null_type, var3989=jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader, var285=$r2, var2126=$r3, var2674=$z0, var2668=java.lang.ClassNotFoundException, var3543=$r4}
; {jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader$2=var1335, r1=var833, r0=var3717, null_type=var2019, jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader=var3989, $r2=var285, $r3=var2126, $z0=var2674, java.lang.ClassNotFoundException=var2668, $r4=var3543}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader$2;	r0 := @parameter0: java.lang.String;	$r2 = r1.<jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader$2: jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader this$0>;	$r3 = staticinvoke <jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader: java.lang.String access$000(jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader)>($r2);	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto $r4 = new java.lang.ClassNotFoundException;	$r4 = new java.lang.ClassNotFoundException;	specialinvoke $r4.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>(r0);	throw $r4
;block_num 2