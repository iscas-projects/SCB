(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1544 0)
(declare-sort var1763 0)
(declare-sort var3152 0)
(declare-sort var809 0)
(declare-sort var2230 0)
(declare-sort var3372 0)
(declare-sort var1290 0)
(declare-sort var554 0)
(declare-sort var451 0)
(declare-sort var3182 0)
(declare-sort var2173 0)
(declare-sort var3751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1763-init () var1763)
(declare-fun providerList/-1884191713 (var1544) var3152)
(declare-fun var2230_stream/-1288525013 (var2230) var809)
(declare-fun cast-from-var3152-to-var2230 (var3152) var2230)
(declare-fun var1290_bootstrap$/-1747436297 () var3372)
(declare-fun var809_map/130902797 (var809 var3372) var809)
(declare-fun var451_joining/-1302177485 (String) var554)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var809_collect/-2050842585 (var809 var554) var3182)
(declare-fun cast-from-var3182-to-String (var3182) String)
(declare-fun getBytes/-163691139 (String var2173) (Array Int Int))
(declare-fun <init>/1208500544 (var1763 (Array Int Int)) void)
(declare-const null-var1544 var1544)
(declare-const var3751-UTF_8 var2173)
(declare-const var1750 var1544) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.spi.Service 
(assert (not (= var1750 null-var1544)))
(define-const var551 var1763 var1763-init) ; Statement: $r0 = new java.io.ByteArrayInputStream 
(define-const var3352 var3152 (providerList/-1884191713 var1750)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.spi.Service: java.util.List providerList> 
(define-const var2187 var809 (var2230_stream/-1288525013 (cast-from-var3152-to-var2230 var3352))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.List: java.util.stream.Stream stream()>() 
(define-const var1351 var3372 var1290_bootstrap$/-1747436297) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.spi.Service$getClassName__196: java.util.function.Function bootstrap$()>() 
(define-const var3608 var809 (var809_map/130902797 var2187 var1351)) ; Statement: $r6 = interfaceinvoke $r4.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r3) 
(define-const var1692 var554 (var451_joining/-1302177485 (cast-from-String-to-String "\n"))) ; Statement: $r5 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>("\n") 
(define-const var1971 var3182 (var809_collect/-2050842585 var3608 var1692)) ; Statement: $r7 = interfaceinvoke $r6.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r5) 
(define-const var2082 String (cast-from-var3182-to-String var1971)) ; Statement: $r9 = (java.lang.String) $r7 
(define-const var531 var2173 var3751-UTF_8) ; Statement: $r8 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var2856 (Array Int Int) (getBytes/-163691139 var2082 var531)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r8) 
(assert true)
;(assert (<init>/1208500544 var551 var2856)) ; Statement: specialinvoke $r0.<java.io.ByteArrayInputStream: void <init>(byte[])>($r10) 

(declare-const var551!1 var1763)
(declare-const var2856!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1763-init=([], java.io.ByteArrayInputStream), providerList/-1884191713=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.spi.Service], java.util.List), var2230_stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var3152-to-var2230=([java.util.List], java.util.Collection), var1290_bootstrap$/-1747436297=([], java.util.function.Function), var809_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var451_joining/-1302177485=([java.lang.CharSequence], java.util.stream.Collector), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var809_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var3182-to-String=([java.lang.Object], java.lang.String), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), <init>/1208500544=([java.io.ByteArrayInputStream, byte[]], void)}
; {var1544=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.spi.Service, var1750=r1, var1763=java.io.ByteArrayInputStream, var551=$r0, var3152=java.util.List, var3352=$r2, var809=java.util.stream.Stream, var2230=java.util.Collection, var2187=$r4, var3372=java.util.function.Function, var1290=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.spi.Service$getClassName__196, var1351=$r3, var3608=$r6, var554=java.util.stream.Collector, var451=java.util.stream.Collectors, var1692=$r5, var3182=java.lang.Object, var1971=$r7, var2082=$r9, var2173=java.nio.charset.Charset, var3751=java.nio.charset.StandardCharsets, var531=$r8, var2856=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.spi.Service=var1544, r1=var1750, java.io.ByteArrayInputStream=var1763, $r0=var551, java.util.List=var3152, $r2=var3352, java.util.stream.Stream=var809, java.util.Collection=var2230, $r4=var2187, java.util.function.Function=var3372, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.spi.Service$getClassName__196=var1290, $r3=var1351, $r6=var3608, java.util.stream.Collector=var554, java.util.stream.Collectors=var451, $r5=var1692, java.lang.Object=var3182, $r7=var1971, $r9=var2082, java.nio.charset.Charset=var2173, java.nio.charset.StandardCharsets=var3751, $r8=var531, $r10=var2856}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.spi.Service;	$r0 = new java.io.ByteArrayInputStream;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.spi.Service: java.util.List providerList>;	$r4 = interfaceinvoke $r2.<java.util.List: java.util.stream.Stream stream()>();	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.spi.Service$getClassName__196: java.util.function.Function bootstrap$()>();	$r6 = interfaceinvoke $r4.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r3);	$r5 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>("\n");	$r7 = interfaceinvoke $r6.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r5);	$r9 = (java.lang.String) $r7;	$r8 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r10 = virtualinvoke $r9.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r8);	specialinvoke $r0.<java.io.ByteArrayInputStream: void <init>(byte[])>($r10);	return $r0
;block_num 1