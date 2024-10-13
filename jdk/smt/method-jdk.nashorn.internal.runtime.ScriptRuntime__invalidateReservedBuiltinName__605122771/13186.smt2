(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1560 0)
(declare-sort var3389 0)
(declare-sort var2052 0)
(declare-sort var700 0)
(declare-sort var2146 0)
(declare-sort var192 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var192!class ClassObject)
(declare-fun var3389_getContextTrusted/-302620867 () var3389)
(declare-fun getBuiltinSwitchPoint/883958375 (var3389 String) var2052)
(declare-fun getLogger/-1961765090 (var3389 ClassObject) var2146)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/1869501631 (var2146 String) void)
(declare-fun arr-var2052-init () (Array Int var2052))
(declare-fun var2052_invalidateAll/-554182589 ((Array Int var2052)) void)
(declare-const null-String String)
(declare-const var700-$assertionsDisabled Bool)
(declare-const null-var2052 var2052)
(declare-const null-__Array__Int__var2052__ (Array Int var2052))
(declare-const var488 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var488 null-String)))
(define-const var3774 var3389 var3389_getContextTrusted/-302620867) ; Statement: r0 = staticinvoke <jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.Context getContextTrusted()>() 
(assert true)
(define-const var634 var2052 (getBuiltinSwitchPoint/883958375 var3774 var488)) ; Statement: r2 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: java.lang.invoke.SwitchPoint getBuiltinSwitchPoint(java.lang.String)>(r1) 
(define-const var208 Bool var700-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.ScriptRuntime: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r8 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger(java.lang.Class)>(class "Ljdk/nashorn/internal/codegen/ApplySpecialization;") 
(assert (not (not (= (ite var208 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if r2 != null goto $r8 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger(java.lang.Class)>(class "Ljdk/nashorn/internal/codegen/ApplySpecialization;") 
(assert (not (= var634 null-var2052))) ; Cond: r2 != null 
(assert true)
(define-const var1214 var2146 (getLogger/-1961765090 var3774 var192!class)) ; Statement: $r8 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger(java.lang.Class)>(class "Ljdk/nashorn/internal/codegen/ApplySpecialization;") 
(define-const var2594 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2594)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2594!1 String)
(assert (= var2594!1 ""))
(assert true)
(define-const var3152 String (append/672562846 var2594!1 "Overwrote special name \u0027")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Overwrote special name \'") 
(declare-const var2594!2 String)
(assert (= var2594!2 (str.++ var2594!1 "Overwrote special name \u0027")))
(assert true)
(define-const var965 String (append/672562846 var3152 var488)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3152!1 String)
(assert (= var3152!1 (str.++ var3152 var488)))
(assert true)
(define-const var1948 String (append/672562846 var965 "\u0027 - invalidating switchpoint")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' - invalidating switchpoint") 
(declare-const var965!1 String)
(assert (= var965!1 (str.++ var965 "\u0027 - invalidating switchpoint")))
(assert true)
(define-const var611 String (toString/-2075883882 var1948)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (info/1869501631 var1214 var611)) ; Statement: virtualinvoke $r8.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.String)>($r7) 

(declare-const var1214!1 var2146)
(declare-const var611!1 String)
(define-const var1612 (Array Int var2052) arr-var2052-init) ; Statement: $r9 = newarray (java.lang.invoke.SwitchPoint)[1] 
(declare-const var1612!1 (Array Int var2052))
(assert (not (= var1612!1 null-__Array__Int__var2052__)))
(assert (= (select var1612!1 0) var634)) ; Statement: $r9[0] = r2 
;(assert (var2052_invalidateAll/-554182589 var1612!1)) ; Statement: staticinvoke <java.lang.invoke.SwitchPoint: void invalidateAll(java.lang.invoke.SwitchPoint[])>($r9) 

(declare-const var1612!2 (Array Int var2052))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3389_getContextTrusted/-302620867=([], jdk.nashorn.internal.runtime.Context), getBuiltinSwitchPoint/883958375=([jdk.nashorn.internal.runtime.Context, java.lang.String], java.lang.invoke.SwitchPoint), getLogger/-1961765090=([jdk.nashorn.internal.runtime.Context, java.lang.Class], jdk.nashorn.internal.runtime.logging.DebugLogger), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/1869501631=([jdk.nashorn.internal.runtime.logging.DebugLogger, java.lang.String], void), arr-var2052-init=([], java.lang.invoke.SwitchPoint[]), var2052_invalidateAll/-554182589=([java.lang.invoke.SwitchPoint[]], void)}
; {var488=r1, var1560=null_type, var3389=jdk.nashorn.internal.runtime.Context, var3774=r0, var2052=java.lang.invoke.SwitchPoint, var634=r2, var700=jdk.nashorn.internal.runtime.ScriptRuntime, var208=$z0, var2146=jdk.nashorn.internal.runtime.logging.DebugLogger, var192=jdk.nashorn.internal.codegen.ApplySpecialization, var1214=$r8, var2594=$r3, var3152=$r4, var965=$r5, var1948=$r6, var611=$r7, var1612=$r9}
; {r1=var488, null_type=var1560, jdk.nashorn.internal.runtime.Context=var3389, r0=var3774, java.lang.invoke.SwitchPoint=var2052, r2=var634, jdk.nashorn.internal.runtime.ScriptRuntime=var700, $z0=var208, jdk.nashorn.internal.runtime.logging.DebugLogger=var2146, jdk.nashorn.internal.codegen.ApplySpecialization=var192, $r8=var1214, $r3=var2594, $r4=var3152, $r5=var965, $r6=var1948, $r7=var611, $r9=var1612}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 = staticinvoke <jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.Context getContextTrusted()>();	r2 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: java.lang.invoke.SwitchPoint getBuiltinSwitchPoint(java.lang.String)>(r1);	$z0 = <jdk.nashorn.internal.runtime.ScriptRuntime: boolean $assertionsDisabled>;	if $z0 != 0 goto $r8 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger(java.lang.Class)>(class "Ljdk/nashorn/internal/codegen/ApplySpecialization;");	if r2 != null goto $r8 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger(java.lang.Class)>(class "Ljdk/nashorn/internal/codegen/ApplySpecialization;");	$r8 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger(java.lang.Class)>(class "Ljdk/nashorn/internal/codegen/ApplySpecialization;");	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Overwrote special name \'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' - invalidating switchpoint");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r8.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.String)>($r7);	$r9 = newarray (java.lang.invoke.SwitchPoint)[1];	$r9[0] = r2;	staticinvoke <java.lang.invoke.SwitchPoint: void invalidateAll(java.lang.invoke.SwitchPoint[])>($r9);	return
;block_num 3