(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2711 0)
(declare-sort var1059 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1059-init () var1059)
(declare-fun <init>/1824159463 (var1059) void)
(declare-const null-String String)
(declare-const var1403 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1403 null-String)))
(define-const var2966 String "none") ; Statement: $r1 = "none" 
(assert true)
(define-const var2945 Bool (= var2966 var1403)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "bytebuddy" 
(assert (not (= (ite var2945 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1701 var1059 var1059-init) ; Statement: $r11 = new org.hibernate.bytecode.internal.none.BytecodeProviderImpl 
(assert true)
;(assert (<init>/1824159463 var1701)) ; Statement: specialinvoke $r11.<org.hibernate.bytecode.internal.none.BytecodeProviderImpl: void <init>()>() 

(declare-const var1701!1 var1059)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1059-init=([], org.hibernate.bytecode.internal.none.BytecodeProviderImpl), <init>/1824159463=([org.hibernate.bytecode.internal.none.BytecodeProviderImpl], void)}
; {var1403=r0, var2711=null_type, var2966=$r1, var2945=$z0, var1059=org.hibernate.bytecode.internal.none.BytecodeProviderImpl, var1701=$r11}
; {r0=var1403, null_type=var2711, $r1=var2966, $z0=var2945, org.hibernate.bytecode.internal.none.BytecodeProviderImpl=var1059, $r11=var1701}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "none";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "bytebuddy";	$r11 = new org.hibernate.bytecode.internal.none.BytecodeProviderImpl;	specialinvoke $r11.<org.hibernate.bytecode.internal.none.BytecodeProviderImpl: void <init>()>();	return $r11
;block_num 2