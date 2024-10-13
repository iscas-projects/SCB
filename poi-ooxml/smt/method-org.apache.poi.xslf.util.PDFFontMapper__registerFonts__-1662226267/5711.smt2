(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var703 0)
(declare-sort var478 0)
(declare-sort var1486 0)
(declare-sort var30 0)
(declare-sort var3296 0)
(declare-sort var3777 0)
(declare-sort var2677 0)
(declare-sort var3931 0)
(declare-sort var3328 0)
(declare-sort var3389 0)
(declare-sort var413 0)
(declare-sort var3874 0)
(declare-sort var1285 0)
(declare-sort var990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1486_getProperty/258823597 (String) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var30-init () var30)
(declare-fun <init>/1281898776 (var30) void)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun var3296_of/184955601 ((Array Int var3777)) var3296)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var3777__ ((Array Int String)) (Array Int var3777))
(declare-fun var3931_bootstrap$/-1792462879 () var2677)
(declare-fun var3296_map/130902797 (var3296 var2677) var3296)
(declare-fun var3389_bootstrap$/-1083262229 () var3328)
(declare-fun var3296_filter/320182972 (var3296 var3328) var3296)
(declare-fun getClass/1258963082 (var3777) ClassObject)
(declare-fun cast-from-var30-to-var3777 (var30) var3777)
(declare-fun var3874_bootstrap$/-2038249727 (var30) var413)
(declare-fun var3296_forEach/1037804367 (var3296 var413) void)
(declare-fun var1285_compile/2141929305 (String) var1285)
(declare-fun isEmpty/-367311564 (var990) Bool)
(declare-fun cast-from-var30-to-var990 (var30) var990)
(declare-const null-var703 var703)
(declare-const null-String String)
(declare-const var2581 var703) ; Statement: r6 := @this: org.apache.poi.xslf.util.PDFFontMapper 
(assert (not (= var2581 null-var703)))
(declare-const var2262 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var2262 null-String)))
(declare-const var3688 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3688 null-String)))
 ; Statement: if r14 != null goto $r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home") 
(assert (not (= var2262 null-String))) ; Cond: r14 != null 
(define-const var877 String (var1486_getProperty/258823597 "user.home")) ; Statement: $r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home") 
(assert true)
(define-const var1211 String (replace/2138489945 var2262 (cast-from-String-to-String "$HOME") (cast-from-String-to-String var877))) ; Statement: $r17 = virtualinvoke r14.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("$HOME", $r16) 
(define-const var3457 var30 var30-init) ; Statement: $r18 = new java.util.LinkedList 
(assert true)
;(assert (<init>/1281898776 var3457)) ; Statement: specialinvoke $r18.<java.util.LinkedList: void <init>()>() 

(declare-const var3457!1 var30)
(assert true)
(define-const var2197 (Array Int String) (split/-636890950 var1211 ";")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.String: java.lang.String[] split(java.lang.String)>(";") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1211 ";") i) (re.++ (re.* re.all) (str.to_re ";") (re.* re.all))))))
(define-const var2865 var3296 (var3296_of/184955601 (cast-from-__Array__Int__String__-to-__Array__Int__var3777__ var2197))) ; Statement: $r20 = staticinvoke <java.util.stream.Stream: java.util.stream.Stream of(java.lang.Object[])>($r19) 
(define-const var2290 var2677 var3931_bootstrap$/-1792462879) ; Statement: $r21 = staticinvoke <org.apache.poi.xslf.util.PDFFontMapper$init__463: java.util.function.Function bootstrap$()>() 
(define-const var1066 var3296 (var3296_map/130902797 var2865 var2290)) ; Statement: $r22 = interfaceinvoke $r20.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r21) 
(define-const var2221 var3328 var3389_bootstrap$/-1083262229) ; Statement: $r23 = staticinvoke <org.apache.poi.xslf.util.PDFFontMapper$isDirectory__470: java.util.function.Predicate bootstrap$()>() 
(define-const var3773 var3296 (var3296_filter/320182972 var1066 var2221)) ; Statement: $r24 = interfaceinvoke $r22.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r23) 
(assert true)
;(assert (getClass/1258963082 (cast-from-var30-to-var3777 var3457!1))) ; Statement: virtualinvoke $r18.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var3457!2 var30)
(define-const var926 var413 (var3874_bootstrap$/-2038249727 var3457!2)) ; Statement: $r25 = staticinvoke <org.apache.poi.xslf.util.PDFFontMapper$add__474: java.util.function.Consumer bootstrap$(java.util.LinkedList)>($r18) 
;(assert (var3296_forEach/1037804367 var3773 var926)) ; Statement: interfaceinvoke $r24.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r25) 

(declare-const var3773!1 var3296)
(declare-const var926!1 var413)
 ; Statement: if r0 != null goto $r26 = r0 
(assert (not (= var3688 null-String))) ; Cond: r0 != null 
(define-const var1194 String var3688) ; Statement: $r26 = r0 
(assert true) ; Non Conditional
(define-const var3231 var1285 (var1285_compile/2141929305 var1194)) ; Statement: $r10 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r26) 
(assert true) ; Non Conditional
(assert true)
(define-const var2776 Bool (isEmpty/-367311564 (cast-from-var30-to-var990 var3457!2))) ; Statement: $z3 = virtualinvoke $r18.<java.util.LinkedList: boolean isEmpty()>() 
 ; Statement: if $z3 != 0 goto return 
(assert (not (= (ite var2776 1 0) 0))) ; Cond: $z3 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1486_getProperty/258823597=([java.lang.String], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var30-init=([], java.util.LinkedList), <init>/1281898776=([java.util.LinkedList], void), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), var3296_of/184955601=([java.lang.Object[]], java.util.stream.Stream), cast-from-__Array__Int__String__-to-__Array__Int__var3777__=([java.lang.String[]], java.lang.Object[]), var3931_bootstrap$/-1792462879=([], java.util.function.Function), var3296_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var3389_bootstrap$/-1083262229=([], java.util.function.Predicate), var3296_filter/320182972=([java.util.stream.Stream, java.util.function.Predicate], java.util.stream.Stream), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var30-to-var3777=([java.util.LinkedList], java.lang.Object), var3874_bootstrap$/-2038249727=([java.util.LinkedList], java.util.function.Consumer), var3296_forEach/1037804367=([java.util.stream.Stream, java.util.function.Consumer], void), var1285_compile/2141929305=([java.lang.String], java.util.regex.Pattern), isEmpty/-367311564=([java.util.AbstractCollection], boolean), cast-from-var30-to-var990=([java.util.LinkedList], java.util.AbstractCollection)}
; {var703=org.apache.poi.xslf.util.PDFFontMapper, var2581=r6, var2262=r14, var478=null_type, var3688=r0, var1486=java.lang.System, var877=$r16, var1211=$r17, var30=java.util.LinkedList, var3457=$r18, var2197=$r19, var3296=java.util.stream.Stream, var3777=java.lang.Object, var2865=$r20, var2677=java.util.function.Function, var3931=org.apache.poi.xslf.util.PDFFontMapper$init__463, var2290=$r21, var1066=$r22, var3328=java.util.function.Predicate, var3389=org.apache.poi.xslf.util.PDFFontMapper$isDirectory__470, var2221=$r23, var3773=$r24, var413=java.util.function.Consumer, var3874=org.apache.poi.xslf.util.PDFFontMapper$add__474, var926=$r25, var1194=$r26, var1285=java.util.regex.Pattern, var3231=$r10, var990=java.util.AbstractCollection, var2776=$z3}
; {org.apache.poi.xslf.util.PDFFontMapper=var703, r6=var2581, r14=var2262, null_type=var478, r0=var3688, java.lang.System=var1486, $r16=var877, $r17=var1211, java.util.LinkedList=var30, $r18=var3457, $r19=var2197, java.util.stream.Stream=var3296, java.lang.Object=var3777, $r20=var2865, java.util.function.Function=var2677, org.apache.poi.xslf.util.PDFFontMapper$init__463=var3931, $r21=var2290, $r22=var1066, java.util.function.Predicate=var3328, org.apache.poi.xslf.util.PDFFontMapper$isDirectory__470=var3389, $r23=var2221, $r24=var3773, java.util.function.Consumer=var413, org.apache.poi.xslf.util.PDFFontMapper$add__474=var3874, $r25=var926, $r26=var1194, java.util.regex.Pattern=var1285, $r10=var3231, java.util.AbstractCollection=var990, $z3=var2776}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r6 := @this: org.apache.poi.xslf.util.PDFFontMapper;	r14 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	if r14 != null goto $r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home");	$r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home");	$r17 = virtualinvoke r14.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("$HOME", $r16);	$r18 = new java.util.LinkedList;	specialinvoke $r18.<java.util.LinkedList: void <init>()>();	$r19 = virtualinvoke $r17.<java.lang.String: java.lang.String[] split(java.lang.String)>(";");	$r20 = staticinvoke <java.util.stream.Stream: java.util.stream.Stream of(java.lang.Object[])>($r19);	$r21 = staticinvoke <org.apache.poi.xslf.util.PDFFontMapper$init__463: java.util.function.Function bootstrap$()>();	$r22 = interfaceinvoke $r20.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r21);	$r23 = staticinvoke <org.apache.poi.xslf.util.PDFFontMapper$isDirectory__470: java.util.function.Predicate bootstrap$()>();	$r24 = interfaceinvoke $r22.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r23);	virtualinvoke $r18.<java.lang.Object: java.lang.Class getClass()>();	$r25 = staticinvoke <org.apache.poi.xslf.util.PDFFontMapper$add__474: java.util.function.Consumer bootstrap$(java.util.LinkedList)>($r18);	interfaceinvoke $r24.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r25);	if r0 != null goto $r26 = r0;	$r26 = r0;	$r10 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r26);	$z3 = virtualinvoke $r18.<java.util.LinkedList: boolean isEmpty()>();	if $z3 != 0 goto return;	return
;block_num 6