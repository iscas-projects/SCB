(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2596 0)
(declare-sort var1497 0)
(declare-sort var187 0)
(declare-sort var638 0)
(declare-sort var2654 0)
(declare-sort var2519 0)
(declare-sort var1917 0)
(declare-sort var3986 0)
(declare-sort var2864 0)
(declare-sort var1179 0)
(declare-sort var359 0)
(declare-sort var1075 0)
(declare-sort var68 0)
(declare-sort var1138 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var187_getProperty/258823597 (String) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var638-init () var638)
(declare-fun <init>/1281898776 (var638) void)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun var2654_of/184955601 ((Array Int var2519)) var2654)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2519__ ((Array Int String)) (Array Int var2519))
(declare-fun var3986_bootstrap$/-1792462879 () var1917)
(declare-fun var2654_map/130902797 (var2654 var1917) var2654)
(declare-fun var1179_bootstrap$/-1083262229 () var2864)
(declare-fun var2654_filter/320182972 (var2654 var2864) var2654)
(declare-fun getClass/1258963082 (var2519) ClassObject)
(declare-fun cast-from-var638-to-var2519 (var638) var2519)
(declare-fun var1075_bootstrap$/-2038249727 (var638) var359)
(declare-fun var2654_forEach/1037804367 (var2654 var359) void)
(declare-fun var68_compile/2141929305 (String) var68)
(declare-fun isEmpty/-367311564 (var1138) Bool)
(declare-fun cast-from-var638-to-var1138 (var638) var1138)
(declare-const null-var2596 var2596)
(declare-const null-String String)
(declare-const var772 var2596) ; Statement: r6 := @this: org.apache.poi.xslf.util.PDFFontMapper 
(assert (not (= var772 null-var2596)))
(declare-const var197 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var197 null-String)))
(declare-const var3715 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3715 null-String)))
 ; Statement: if r14 != null goto $r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home") 
(assert (not (= var197 null-String))) ; Cond: r14 != null 
(define-const var787 String (var187_getProperty/258823597 "user.home")) ; Statement: $r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home") 
(assert true)
(define-const var1460 String (replace/2138489945 var197 (cast-from-String-to-String "$HOME") (cast-from-String-to-String var787))) ; Statement: $r17 = virtualinvoke r14.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("$HOME", $r16) 
(define-const var994 var638 var638-init) ; Statement: $r18 = new java.util.LinkedList 
(assert true)
;(assert (<init>/1281898776 var994)) ; Statement: specialinvoke $r18.<java.util.LinkedList: void <init>()>() 

(declare-const var994!1 var638)
(assert true)
(define-const var1149 (Array Int String) (split/-636890950 var1460 ";")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.String: java.lang.String[] split(java.lang.String)>(";") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1460 ";") i) (re.++ (re.* re.all) (str.to_re ";") (re.* re.all))))))
(define-const var177 var2654 (var2654_of/184955601 (cast-from-__Array__Int__String__-to-__Array__Int__var2519__ var1149))) ; Statement: $r20 = staticinvoke <java.util.stream.Stream: java.util.stream.Stream of(java.lang.Object[])>($r19) 
(define-const var3184 var1917 var3986_bootstrap$/-1792462879) ; Statement: $r21 = staticinvoke <org.apache.poi.xslf.util.PDFFontMapper$init__463: java.util.function.Function bootstrap$()>() 
(define-const var3807 var2654 (var2654_map/130902797 var177 var3184)) ; Statement: $r22 = interfaceinvoke $r20.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r21) 
(define-const var3978 var2864 var1179_bootstrap$/-1083262229) ; Statement: $r23 = staticinvoke <org.apache.poi.xslf.util.PDFFontMapper$isDirectory__470: java.util.function.Predicate bootstrap$()>() 
(define-const var2404 var2654 (var2654_filter/320182972 var3807 var3978)) ; Statement: $r24 = interfaceinvoke $r22.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r23) 
(assert true)
;(assert (getClass/1258963082 (cast-from-var638-to-var2519 var994!1))) ; Statement: virtualinvoke $r18.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var994!2 var638)
(define-const var1272 var359 (var1075_bootstrap$/-2038249727 var994!2)) ; Statement: $r25 = staticinvoke <org.apache.poi.xslf.util.PDFFontMapper$add__474: java.util.function.Consumer bootstrap$(java.util.LinkedList)>($r18) 
;(assert (var2654_forEach/1037804367 var2404 var1272)) ; Statement: interfaceinvoke $r24.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r25) 

(declare-const var2404!1 var2654)
(declare-const var1272!1 var359)
 ; Statement: if r0 != null goto $r26 = r0 
(assert (not (not (= var3715 null-String)))) ; Negate: Cond: r0 != null  
(define-const var3974 String ".*\u005c.tt[fc]") ; Statement: $r26 = ".*\\.tt[fc]" 
 ; Statement: goto [?= $r10 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r26)] 
(assert true) ; Non Conditional
(define-const var93 var68 (var68_compile/2141929305 var3974)) ; Statement: $r10 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r26) 
(assert true) ; Non Conditional
(assert true)
(define-const var3731 Bool (isEmpty/-367311564 (cast-from-var638-to-var1138 var994!2))) ; Statement: $z3 = virtualinvoke $r18.<java.util.LinkedList: boolean isEmpty()>() 
 ; Statement: if $z3 != 0 goto return 
(assert (not (= (ite var3731 1 0) 0))) ; Cond: $z3 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var187_getProperty/258823597=([java.lang.String], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var638-init=([], java.util.LinkedList), <init>/1281898776=([java.util.LinkedList], void), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), var2654_of/184955601=([java.lang.Object[]], java.util.stream.Stream), cast-from-__Array__Int__String__-to-__Array__Int__var2519__=([java.lang.String[]], java.lang.Object[]), var3986_bootstrap$/-1792462879=([], java.util.function.Function), var2654_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var1179_bootstrap$/-1083262229=([], java.util.function.Predicate), var2654_filter/320182972=([java.util.stream.Stream, java.util.function.Predicate], java.util.stream.Stream), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var638-to-var2519=([java.util.LinkedList], java.lang.Object), var1075_bootstrap$/-2038249727=([java.util.LinkedList], java.util.function.Consumer), var2654_forEach/1037804367=([java.util.stream.Stream, java.util.function.Consumer], void), var68_compile/2141929305=([java.lang.String], java.util.regex.Pattern), isEmpty/-367311564=([java.util.AbstractCollection], boolean), cast-from-var638-to-var1138=([java.util.LinkedList], java.util.AbstractCollection)}
; {var2596=org.apache.poi.xslf.util.PDFFontMapper, var772=r6, var197=r14, var1497=null_type, var3715=r0, var187=java.lang.System, var787=$r16, var1460=$r17, var638=java.util.LinkedList, var994=$r18, var1149=$r19, var2654=java.util.stream.Stream, var2519=java.lang.Object, var177=$r20, var1917=java.util.function.Function, var3986=org.apache.poi.xslf.util.PDFFontMapper$init__463, var3184=$r21, var3807=$r22, var2864=java.util.function.Predicate, var1179=org.apache.poi.xslf.util.PDFFontMapper$isDirectory__470, var3978=$r23, var2404=$r24, var359=java.util.function.Consumer, var1075=org.apache.poi.xslf.util.PDFFontMapper$add__474, var1272=$r25, var3974=$r26, var68=java.util.regex.Pattern, var93=$r10, var1138=java.util.AbstractCollection, var3731=$z3}
; {org.apache.poi.xslf.util.PDFFontMapper=var2596, r6=var772, r14=var197, null_type=var1497, r0=var3715, java.lang.System=var187, $r16=var787, $r17=var1460, java.util.LinkedList=var638, $r18=var994, $r19=var1149, java.util.stream.Stream=var2654, java.lang.Object=var2519, $r20=var177, java.util.function.Function=var1917, org.apache.poi.xslf.util.PDFFontMapper$init__463=var3986, $r21=var3184, $r22=var3807, java.util.function.Predicate=var2864, org.apache.poi.xslf.util.PDFFontMapper$isDirectory__470=var1179, $r23=var3978, $r24=var2404, java.util.function.Consumer=var359, org.apache.poi.xslf.util.PDFFontMapper$add__474=var1075, $r25=var1272, $r26=var3974, java.util.regex.Pattern=var68, $r10=var93, java.util.AbstractCollection=var1138, $z3=var3731}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r6 := @this: org.apache.poi.xslf.util.PDFFontMapper;	r14 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	if r14 != null goto $r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home");	$r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home");	$r17 = virtualinvoke r14.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("$HOME", $r16);	$r18 = new java.util.LinkedList;	specialinvoke $r18.<java.util.LinkedList: void <init>()>();	$r19 = virtualinvoke $r17.<java.lang.String: java.lang.String[] split(java.lang.String)>(";");	$r20 = staticinvoke <java.util.stream.Stream: java.util.stream.Stream of(java.lang.Object[])>($r19);	$r21 = staticinvoke <org.apache.poi.xslf.util.PDFFontMapper$init__463: java.util.function.Function bootstrap$()>();	$r22 = interfaceinvoke $r20.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r21);	$r23 = staticinvoke <org.apache.poi.xslf.util.PDFFontMapper$isDirectory__470: java.util.function.Predicate bootstrap$()>();	$r24 = interfaceinvoke $r22.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r23);	virtualinvoke $r18.<java.lang.Object: java.lang.Class getClass()>();	$r25 = staticinvoke <org.apache.poi.xslf.util.PDFFontMapper$add__474: java.util.function.Consumer bootstrap$(java.util.LinkedList)>($r18);	interfaceinvoke $r24.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r25);	if r0 != null goto $r26 = r0;	$r26 = ".*\\.tt[fc]";	goto [?= $r10 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r26)];	$r10 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>($r26);	$z3 = virtualinvoke $r18.<java.util.LinkedList: boolean isEmpty()>();	if $z3 != 0 goto return;	return
;block_num 6