(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1591 0)
(declare-sort var417 0)
(declare-sort var995 0)
(declare-sort var3029 0)
(declare-sort var1751 0)
(declare-sort var2943 0)
(declare-sort var481 0)
(declare-sort var1769 0)
(declare-sort var3931 0)
(declare-sort var3522 0)
(declare-sort var1888 0)
(declare-sort var1503 0)
(declare-sort var1416 0)
(declare-sort var1569 0)
(declare-sort var3009 0)
(declare-sort var3907 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var995_compile/2141929305 (String) var995)
(declare-fun matcher/468719934 (var995 String) var3029)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1751-init () var1751)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun <init>/873423232 (var1751 var1591 Int Int var3029) void)
(declare-fun var481_stream/-201342981 (var1769 Bool) var2943)
(declare-fun cast-from-var1751-to-var1769 (var1751) var1769)
(declare-fun var3522_bootstrap$/1891924624 (var1591) var3931)
(declare-fun var2943_flatMap/-1554361452 (var2943 var3931) var2943)
(declare-fun var1503_bootstrap$/-358137635 () var1888)
(declare-fun var1569_toCollection/-1692833109 (var1888) var1416)
(declare-fun var2943_collect/-2050842585 (var2943 var1416) var3009)
(declare-fun cast-from-var3009-to-var3907 (var3009) var3907)
(declare-const null-var1591 var1591)
(declare-const null-String String)
(declare-const var1526 var1591) ; Statement: r4 := @this: org.apache.poi.xslf.util.PPTHandler 
(assert (not (= var1526 null-var1591)))
(declare-const var1852 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1852 null-String)))
(define-const var2177 var995 (var995_compile/2141929305 "(^|,)(?<from>\u005cd+)?(-(?<to>\u005cd+))?")) ; Statement: $r1 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>("(^|,)(?<from>\\d+)?(-(?<to>\\d+))?") 
(assert true)
(define-const var2240 var3029 (matcher/468719934 var2177 (cast-from-String-to-String var1852))) ; Statement: r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(define-const var1287 var1751 var1751-init) ; Statement: $r3 = new org.apache.poi.xslf.util.PPTHandler$1 
(assert true)
(define-const var3682 Int (length/-134980193 var1852)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3541 Int (cast-from-Int-to-Int var3682)) ; Statement: $l1 = (long) $i0 
(assert true)
;(assert (<init>/873423232 var1287 var1526 var3541 272 var2240)) ; Statement: specialinvoke $r3.<org.apache.poi.xslf.util.PPTHandler$1: void <init>(org.apache.poi.xslf.util.PPTHandler,long,int,java.util.regex.Matcher)>(r4, $l1, 272, r2) 

(declare-const var1287!1 var1751)
(declare-const var1526!1 var1591)
(declare-const var3541!1 Int)
(declare-const var324 Int)
(declare-const var2240!1 var3029)
(define-const var3451 var2943 (var481_stream/-201342981 (cast-from-var1751-to-var1769 var1287!1) (ite (= 1 0) true false))) ; Statement: $r6 = staticinvoke <java.util.stream.StreamSupport: java.util.stream.Stream stream(java.util.Spliterator,boolean)>($r3, 0) 
(define-const var2242 var3931 (var3522_bootstrap$/1891924624 var1526!1)) ; Statement: $r5 = staticinvoke <org.apache.poi.xslf.util.PPTHandler$range__464: java.util.function.Function bootstrap$(org.apache.poi.xslf.util.PPTHandler)>(r4) 
(define-const var428 var2943 (var2943_flatMap/-1554361452 var3451 var2242)) ; Statement: $r9 = interfaceinvoke $r6.<java.util.stream.Stream: java.util.stream.Stream flatMap(java.util.function.Function)>($r5) 
(define-const var1340 var1888 var1503_bootstrap$/-358137635) ; Statement: $r7 = staticinvoke <org.apache.poi.xslf.util.PPTHandler$init__465: java.util.function.Supplier bootstrap$()>() 
(define-const var3951 var1416 (var1569_toCollection/-1692833109 var1340)) ; Statement: $r8 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toCollection(java.util.function.Supplier)>($r7) 
(define-const var617 var3009 (var2943_collect/-2050842585 var428 var3951)) ; Statement: $r10 = interfaceinvoke $r9.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r8) 
(define-const var1452 var3907 (cast-from-var3009-to-var3907 var617)) ; Statement: $r11 = (java.util.Set) $r10 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var995_compile/2141929305=([java.lang.String], java.util.regex.Pattern), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1751-init=([], org.apache.poi.xslf.util.PPTHandler$1), length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], long), <init>/873423232=([org.apache.poi.xslf.util.PPTHandler$1, org.apache.poi.xslf.util.PPTHandler, long, int, java.util.regex.Matcher], void), var481_stream/-201342981=([java.util.Spliterator, boolean], java.util.stream.Stream), cast-from-var1751-to-var1769=([org.apache.poi.xslf.util.PPTHandler$1], java.util.Spliterator), var3522_bootstrap$/1891924624=([org.apache.poi.xslf.util.PPTHandler], java.util.function.Function), var2943_flatMap/-1554361452=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var1503_bootstrap$/-358137635=([], java.util.function.Supplier), var1569_toCollection/-1692833109=([java.util.function.Supplier], java.util.stream.Collector), var2943_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var3009-to-var3907=([java.lang.Object], java.util.Set)}
; {var1591=org.apache.poi.xslf.util.PPTHandler, var1526=r4, var1852=r0, var417=null_type, var995=java.util.regex.Pattern, var2177=$r1, var3029=java.util.regex.Matcher, var2240=r2, var1751=org.apache.poi.xslf.util.PPTHandler$1, var1287=$r3, var3682=$i0, var3541=$l1, var324=272, var2943=java.util.stream.Stream, var481=java.util.stream.StreamSupport, var1769=java.util.Spliterator, var3451=$r6, var3931=java.util.function.Function, var3522=org.apache.poi.xslf.util.PPTHandler$range__464, var2242=$r5, var428=$r9, var1888=java.util.function.Supplier, var1503=org.apache.poi.xslf.util.PPTHandler$init__465, var1340=$r7, var1416=java.util.stream.Collector, var1569=java.util.stream.Collectors, var3951=$r8, var3009=java.lang.Object, var617=$r10, var3907=java.util.Set, var1452=$r11}
; {org.apache.poi.xslf.util.PPTHandler=var1591, r4=var1526, r0=var1852, null_type=var417, java.util.regex.Pattern=var995, $r1=var2177, java.util.regex.Matcher=var3029, r2=var2240, org.apache.poi.xslf.util.PPTHandler$1=var1751, $r3=var1287, $i0=var3682, $l1=var3541, 272=var324, java.util.stream.Stream=var2943, java.util.stream.StreamSupport=var481, java.util.Spliterator=var1769, $r6=var3451, java.util.function.Function=var3931, org.apache.poi.xslf.util.PPTHandler$range__464=var3522, $r5=var2242, $r9=var428, java.util.function.Supplier=var1888, org.apache.poi.xslf.util.PPTHandler$init__465=var1503, $r7=var1340, java.util.stream.Collector=var1416, java.util.stream.Collectors=var1569, $r8=var3951, java.lang.Object=var3009, $r10=var617, java.util.Set=var3907, $r11=var1452}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: org.apache.poi.xslf.util.PPTHandler;	r0 := @parameter0: java.lang.String;	$r1 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String)>("(^|,)(?<from>\\d+)?(-(?<to>\\d+))?");	r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$r3 = new org.apache.poi.xslf.util.PPTHandler$1;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$l1 = (long) $i0;	specialinvoke $r3.<org.apache.poi.xslf.util.PPTHandler$1: void <init>(org.apache.poi.xslf.util.PPTHandler,long,int,java.util.regex.Matcher)>(r4, $l1, 272, r2);	$r6 = staticinvoke <java.util.stream.StreamSupport: java.util.stream.Stream stream(java.util.Spliterator,boolean)>($r3, 0);	$r5 = staticinvoke <org.apache.poi.xslf.util.PPTHandler$range__464: java.util.function.Function bootstrap$(org.apache.poi.xslf.util.PPTHandler)>(r4);	$r9 = interfaceinvoke $r6.<java.util.stream.Stream: java.util.stream.Stream flatMap(java.util.function.Function)>($r5);	$r7 = staticinvoke <org.apache.poi.xslf.util.PPTHandler$init__465: java.util.function.Supplier bootstrap$()>();	$r8 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toCollection(java.util.function.Supplier)>($r7);	$r10 = interfaceinvoke $r9.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r8);	$r11 = (java.util.Set) $r10;	return $r11
;block_num 1