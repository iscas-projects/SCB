(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3347 0)
(declare-sort var1072 0)
(declare-sort var1492 0)
(declare-sort var2923 0)
(declare-sort var2794 0)
(declare-sort var2678 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun functionNodeId/-210121074 (var3347) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun paramTypes/-210121074 (var3347) (Array Int var1492))
(declare-fun var2923_toString/-575966009 ((Array Int var2794)) String)
(declare-fun cast-from-__Array__Int__var1492__-to-__Array__Int__var2794__ ((Array Int var1492)) (Array Int var2794))
(declare-fun returnType/-210121074 (var3347) var1492)
(declare-fun cast-from-var1492-to-var2678 (var1492) var2678)
(declare-fun append/-1031950772 (String var2794) String)
(declare-fun cast-from-var2678-to-var2794 (var2678) var2794)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3347 var3347)
(declare-const null-String String)
(declare-const null-var1492 var1492)
(declare-const var2125 var3347) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.TypeMap 
(assert (not (= var2125 null-var3347)))
(declare-const var2189 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2189 null-String)))
(define-const var931 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var931)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var931!1 String)
(assert (= var931!1 ""))
(define-const var3837 Int (functionNodeId/-210121074 var2125)) ; Statement: i0 = r1.<jdk.nashorn.internal.codegen.TypeMap: int functionNodeId> 
(assert true)
(define-const var2681 String (append/672562846 var931!1 var2189)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var931!2 String)
(assert (= var931!2 (str.++ var931!1 var2189)))
(assert true)
;(assert (append/-1166366385 var2681 9)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(9) 
(declare-const var2681!1 String)
(assert (str.prefixof var2681 var2681!1))
(assert true)
(define-const var1708 String (append/672562846 var931!2 "function ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function ") 
(declare-const var931!3 String)
(assert (= var931!3 (str.++ var931!2 "function ")))
(assert true)
(define-const var451 String (append/-1001720160 var1708 var3837)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1708!1 String)
(assert (str.prefixof var1708 var1708!1))
(assert true)
;(assert (append/-1166366385 var451 10)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var451!1 String)
(assert (str.prefixof var451 var451!1))
(assert true)
(define-const var809 String (append/672562846 var931!3 var2189)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var931!4 String)
(assert (= var931!4 (str.++ var931!3 var2189)))
(assert true)
;(assert (append/672562846 var809 "\t\tparamTypes=")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\t\tparamTypes=") 
(declare-const var809!1 String)
(assert (= var809!1 (str.++ var809 "\t\tparamTypes=")))
(define-const var818 (Array Int var1492) (paramTypes/-210121074 var2125)) ; Statement: $r7 = r1.<jdk.nashorn.internal.codegen.TypeMap: jdk.nashorn.internal.codegen.types.Type[] paramTypes> 
(define-const var2426 String (var2923_toString/-575966009 (cast-from-__Array__Int__var1492__-to-__Array__Int__var2794__ var818))) ; Statement: $r8 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r7) 
(assert true)
;(assert (append/672562846 var931!4 var2426)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var931!5 String)
(assert (= var931!5 (str.++ var931!4 var2426)))
(assert true)
;(assert (append/-1166366385 var931!5 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var931!6 String)
(assert (str.prefixof var931!5 var931!6))
(assert true)
(define-const var3844 String (append/672562846 var931!6 var2189)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var931!7 String)
(assert (= var931!7 (str.++ var931!6 var2189)))
(assert true)
;(assert (append/672562846 var3844 "\t\treturnType=")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\t\treturnType=") 
(declare-const var3844!1 String)
(assert (= var3844!1 (str.++ var3844 "\t\treturnType=")))
(define-const var2284 var1492 (returnType/-210121074 var2125)) ; Statement: r10 = r1.<jdk.nashorn.internal.codegen.TypeMap: jdk.nashorn.internal.codegen.types.Type returnType> 
 ; Statement: if r10 != null goto $r12 = r10 
(assert (not (= var2284 null-var1492))) ; Cond: r10 != null 
(define-const var164 var2678 (cast-from-var1492-to-var2678 var2284)) ; Statement: $r12 = r10 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1031950772 var931!7 (cast-from-var2678-to-var2794 var164))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var931!8 String)
(assert (str.prefixof var931!7 var931!8))
(assert true)
;(assert (append/-1166366385 var931!8 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var931!9 String)
(assert (str.prefixof var931!8 var931!9))
(assert true)
(define-const var2120 String (toString/-2075883882 var931!9)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), functionNodeId/-210121074=([jdk.nashorn.internal.codegen.TypeMap], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), paramTypes/-210121074=([jdk.nashorn.internal.codegen.TypeMap], jdk.nashorn.internal.codegen.types.Type[]), var2923_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var1492__-to-__Array__Int__var2794__=([jdk.nashorn.internal.codegen.types.Type[]], java.lang.Object[]), returnType/-210121074=([jdk.nashorn.internal.codegen.TypeMap], jdk.nashorn.internal.codegen.types.Type), cast-from-var1492-to-var2678=([jdk.nashorn.internal.codegen.types.Type], java.io.Serializable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2678-to-var2794=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3347=jdk.nashorn.internal.codegen.TypeMap, var2125=r1, var2189=r2, var1072=null_type, var931=$r0, var3837=i0, var2681=$r3, var1708=$r4, var451=$r5, var809=$r6, var1492=jdk.nashorn.internal.codegen.types.Type, var818=$r7, var2923=java.util.Arrays, var2794=java.lang.Object, var2426=$r8, var3844=$r9, var2284=r10, var2678=java.io.Serializable, var164=$r12, var2120=$r11}
; {jdk.nashorn.internal.codegen.TypeMap=var3347, r1=var2125, r2=var2189, null_type=var1072, $r0=var931, i0=var3837, $r3=var2681, $r4=var1708, $r5=var451, $r6=var809, jdk.nashorn.internal.codegen.types.Type=var1492, $r7=var818, java.util.Arrays=var2923, java.lang.Object=var2794, $r8=var2426, $r9=var3844, r10=var2284, java.io.Serializable=var2678, $r12=var164, $r11=var2120}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.TypeMap;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i0 = r1.<jdk.nashorn.internal.codegen.TypeMap: int functionNodeId>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(9);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\t\tparamTypes=");	$r7 = r1.<jdk.nashorn.internal.codegen.TypeMap: jdk.nashorn.internal.codegen.types.Type[] paramTypes>;	$r8 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r7);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\t\treturnType=");	r10 = r1.<jdk.nashorn.internal.codegen.TypeMap: jdk.nashorn.internal.codegen.types.Type returnType>;	if r10 != null goto $r12 = r10;	$r12 = r10;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 3