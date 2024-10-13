(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3731 0)
(declare-sort var3298 0)
(declare-sort var2546 0)
(declare-sort var2253 0)
(declare-sort var3245 0)
(declare-sort var218 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var218!class ClassObject)
(declare-fun var3298_getContextTrusted/-302620867 () var3298)
(declare-fun getBuiltinSwitchPoint/883958375 (var3298 String) var2546)
(declare-fun getLogger/-1961765090 (var3298 ClassObject) var3245)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/1869501631 (var3245 String) void)
(declare-fun arr-var2546-init () (Array Int var2546))
(declare-fun var2546_invalidateAll/-554182589 ((Array Int var2546)) void)
(declare-const null-String String)
(declare-const var2253-$assertionsDisabled Bool)
(declare-const null-__Array__Int__var2546__ (Array Int var2546))
(declare-const var16 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var16 null-String)))
(define-const var999 var3298 var3298_getContextTrusted/-302620867) ; Statement: r0 = staticinvoke <jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.Context getContextTrusted()>() 
(assert true)
(define-const var805 var2546 (getBuiltinSwitchPoint/883958375 var999 var16)) ; Statement: r2 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: java.lang.invoke.SwitchPoint getBuiltinSwitchPoint(java.lang.String)>(r1) 
(define-const var3208 Bool var2253-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.ScriptRuntime: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r8 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger(java.lang.Class)>(class "Ljdk/nashorn/internal/codegen/ApplySpecialization;") 
(assert (not (= (ite var3208 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3997 var3245 (getLogger/-1961765090 var999 var218!class)) ; Statement: $r8 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger(java.lang.Class)>(class "Ljdk/nashorn/internal/codegen/ApplySpecialization;") 
(define-const var941 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var941)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var941!1 String)
(assert (= var941!1 ""))
(assert true)
(define-const var1085 String (append/672562846 var941!1 "Overwrote special name \u0027")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Overwrote special name \'") 
(declare-const var941!2 String)
(assert (= var941!2 (str.++ var941!1 "Overwrote special name \u0027")))
(assert true)
(define-const var653 String (append/672562846 var1085 var16)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1085!1 String)
(assert (= var1085!1 (str.++ var1085 var16)))
(assert true)
(define-const var1023 String (append/672562846 var653 "\u0027 - invalidating switchpoint")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' - invalidating switchpoint") 
(declare-const var653!1 String)
(assert (= var653!1 (str.++ var653 "\u0027 - invalidating switchpoint")))
(assert true)
(define-const var3255 String (toString/-2075883882 var1023)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (info/1869501631 var3997 var3255)) ; Statement: virtualinvoke $r8.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.String)>($r7) 

(declare-const var3997!1 var3245)
(declare-const var3255!1 String)
(define-const var2320 (Array Int var2546) arr-var2546-init) ; Statement: $r9 = newarray (java.lang.invoke.SwitchPoint)[1] 
(declare-const var2320!1 (Array Int var2546))
(assert (not (= var2320!1 null-__Array__Int__var2546__)))
(assert (= (select var2320!1 0) var805)) ; Statement: $r9[0] = r2 
;(assert (var2546_invalidateAll/-554182589 var2320!1)) ; Statement: staticinvoke <java.lang.invoke.SwitchPoint: void invalidateAll(java.lang.invoke.SwitchPoint[])>($r9) 

(declare-const var2320!2 (Array Int var2546))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3298_getContextTrusted/-302620867=([], jdk.nashorn.internal.runtime.Context), getBuiltinSwitchPoint/883958375=([jdk.nashorn.internal.runtime.Context, java.lang.String], java.lang.invoke.SwitchPoint), getLogger/-1961765090=([jdk.nashorn.internal.runtime.Context, java.lang.Class], jdk.nashorn.internal.runtime.logging.DebugLogger), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/1869501631=([jdk.nashorn.internal.runtime.logging.DebugLogger, java.lang.String], void), arr-var2546-init=([], java.lang.invoke.SwitchPoint[]), var2546_invalidateAll/-554182589=([java.lang.invoke.SwitchPoint[]], void)}
; {var16=r1, var3731=null_type, var3298=jdk.nashorn.internal.runtime.Context, var999=r0, var2546=java.lang.invoke.SwitchPoint, var805=r2, var2253=jdk.nashorn.internal.runtime.ScriptRuntime, var3208=$z0, var3245=jdk.nashorn.internal.runtime.logging.DebugLogger, var218=jdk.nashorn.internal.codegen.ApplySpecialization, var3997=$r8, var941=$r3, var1085=$r4, var653=$r5, var1023=$r6, var3255=$r7, var2320=$r9}
; {r1=var16, null_type=var3731, jdk.nashorn.internal.runtime.Context=var3298, r0=var999, java.lang.invoke.SwitchPoint=var2546, r2=var805, jdk.nashorn.internal.runtime.ScriptRuntime=var2253, $z0=var3208, jdk.nashorn.internal.runtime.logging.DebugLogger=var3245, jdk.nashorn.internal.codegen.ApplySpecialization=var218, $r8=var3997, $r3=var941, $r4=var1085, $r5=var653, $r6=var1023, $r7=var3255, $r9=var2320}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 = staticinvoke <jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.Context getContextTrusted()>();	r2 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: java.lang.invoke.SwitchPoint getBuiltinSwitchPoint(java.lang.String)>(r1);	$z0 = <jdk.nashorn.internal.runtime.ScriptRuntime: boolean $assertionsDisabled>;	if $z0 != 0 goto $r8 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger(java.lang.Class)>(class "Ljdk/nashorn/internal/codegen/ApplySpecialization;");	$r8 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger(java.lang.Class)>(class "Ljdk/nashorn/internal/codegen/ApplySpecialization;");	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Overwrote special name \'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' - invalidating switchpoint");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r8.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.String)>($r7);	$r9 = newarray (java.lang.invoke.SwitchPoint)[1];	$r9[0] = r2;	staticinvoke <java.lang.invoke.SwitchPoint: void invalidateAll(java.lang.invoke.SwitchPoint[])>($r9);	return
;block_num 2