(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var368 0)
(declare-sort var2269 0)
(declare-sort var480 0)
(declare-sort var3783 0)
(declare-sort var1416 0)
(declare-sort var461 0)
(declare-sort var585 0)
(declare-sort var2838 0)
(declare-sort var969 0)
(declare-sort var3924 0)
(declare-sort var3772 0)
(declare-sort var1906 0)
(declare-sort var3661 0)
(declare-sort var912 0)
(declare-sort var2688 0)
(declare-sort var1421 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1416_getDefault/273610319 () var3783)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var585_on/508924409 (String) var585)
(declare-fun splitToList/739613109 (var585 String) var2838)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2838_size/-959786421 (var2838) Int)
(declare-fun getPathMatcher/-450340845 (var3783 String) var969)
(declare-fun arr-String-init () (Array Int String))
(declare-fun getPath/-148735200 (var3783 String (Array Int String)) var3924)
(declare-fun var1906_of/-1269712239 (var3661) var1906)
(declare-fun cast-from-var3772-to-var3661 (var3772) var3661)
(declare-fun var912-init () var912)
(declare-fun <init>/-997981811 (var912 var969 Bool var480 var2269) void)
(declare-fun var2688_walkFileTree/-2013667260 (var3924 var480 Int var1421) var3924)
(declare-fun cast-from-var1906-to-var480 (var1906) var480)
(declare-fun cast-from-var912-to-var1421 (var912) var1421)
(declare-const null-String String)
(declare-const null-var2269 var2269)
(declare-const null-var480 var480)
(declare-const var461-separator String)
(declare-const var3772-FOLLOW_LINKS var3772)
(declare-const var623 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var623 null-String)))
(declare-const var2760 var2269) ; Statement: r6 := @parameter1: java.util.Map 
(assert (not (= var2760 null-var2269)))
(declare-const var1349 var480) ; Statement: r5 := @parameter2: java.util.Set 
(assert (not (= var1349 null-var480)))
(define-const var3201 var3783 var1416_getDefault/273610319) ; Statement: r0 = staticinvoke <java.nio.file.FileSystems: java.nio.file.FileSystem getDefault()>() 
(assert true)
(define-const var1474 Int (indexOf/-1037706067 var623 33)) ; Statement: $i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(33) 
 ; Statement: if $i0 != 0 goto $z5 = 0 
(assert (not (= var1474 0))) ; Cond: $i0 != 0 
(define-const var1618 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(define-const var2413 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
(define-const var1211 Bool var1618) ; Statement: z0 = $z5 
 ; Statement: if $z4 == 0 goto $r1 = <java.io.File: java.lang.String separator> 
(assert (= (ite var2413 1 0) 0)) ; Cond: $z4 == 0 
(define-const var133 String var461-separator) ; Statement: $r1 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var269 Bool (= var133 "\u005c")) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("\\") 
 ; Statement: if $z1 == 0 goto $r15 = <java.io.File: java.lang.String separator> 
(assert (not (= (ite var269 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2660 String "\u005c\u005c") ; Statement: $r15 = "\\\\" 
 ; Statement: goto [?= r2 = $r15] 
(assert true) ; Non Conditional
(define-const var1858 String var2660) ; Statement: r2 = $r15 
(define-const var76 String var461-separator) ; Statement: $r3 = <java.io.File: java.lang.String separator> 
(define-const var2497 var585 (var585_on/508924409 var76)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(java.lang.String)>($r3) 
(assert true)
(define-const var3323 var2838 (splitToList/739613109 var2497 (cast-from-String-to-String var623))) ; Statement: $r13 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.util.List splitToList(java.lang.CharSequence)>(r14) 
(define-const var1591 String ".") ; Statement: r16 = "." 
(define-const var3026 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var1527 Int (var2838_size/-959786421 var3323)) ; Statement: $i3 = interfaceinvoke $r13.<java.util.List: int size()>() 
 ; Statement: if i2 >= $i3 goto $r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>(r16, r2, r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("glob:\u0001\u0001\u0001") 
(assert (>= var3026 var1527)) ; Cond: i2 >= $i3 
(define-const var3547 String (str.++ "glob:\u0001\u0001\u0001" var1591 var1858 var623)) ; Statement: $r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>(r16, r2, r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("glob:\u0001\u0001\u0001") 
(assert true)
(define-const var1697 var969 (getPathMatcher/-450340845 var3201 var3547)) ; Statement: $r18 = virtualinvoke r0.<java.nio.file.FileSystem: java.nio.file.PathMatcher getPathMatcher(java.lang.String)>($r17) 
(define-const var3183 (Array Int String) arr-String-init) ; Statement: $r19 = newarray (java.lang.String)[0] 
(assert true)
(define-const var2369 var3924 (getPath/-148735200 var3201 var1591 var3183)) ; Statement: $r20 = virtualinvoke r0.<java.nio.file.FileSystem: java.nio.file.Path getPath(java.lang.String,java.lang.String[])>(r16, $r19) 
(define-const var2313 var3772 var3772-FOLLOW_LINKS) ; Statement: $r21 = <java.nio.file.FileVisitOption: java.nio.file.FileVisitOption FOLLOW_LINKS> 
(define-const var1682 var1906 (var1906_of/-1269712239 (cast-from-var3772-to-var3661 var2313))) ; Statement: $r22 = staticinvoke <java.util.EnumSet: java.util.EnumSet of(java.lang.Enum)>($r21) 
(define-const var2475 var912 var912-init) ; Statement: $r23 = new com.google.javascript.jscomp.CommandLineRunner$1 
(assert true)
;(assert (<init>/-997981811 var2475 var1697 var1211 var1349 var2760)) ; Statement: specialinvoke $r23.<com.google.javascript.jscomp.CommandLineRunner$1: void <init>(java.nio.file.PathMatcher,boolean,java.util.Set,java.util.Map)>($r18, z0, r5, r6) 

(declare-const var2475!1 var912)
(declare-const var1697!1 var969)
(declare-const var1211!1 Bool)
(declare-const var1349!1 var480)
(declare-const var2760!1 var2269)
;(assert (var2688_walkFileTree/-2013667260 var2369 (cast-from-var1906-to-var480 var1682) 2147483647 (cast-from-var912-to-var1421 var2475!1))) ; Statement: staticinvoke <java.nio.file.Files: java.nio.file.Path walkFileTree(java.nio.file.Path,java.util.Set,int,java.nio.file.FileVisitor)>($r20, $r22, 2147483647, $r23) 

(declare-const var2369!1 var3924)
(declare-const var1682!1 var1906)
(declare-const var307 Int)
(declare-const var2475!2 var912)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1416_getDefault/273610319=([], java.nio.file.FileSystem), indexOf/-1037706067=([java.lang.String, int], int), var585_on/508924409=([java.lang.String], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter), splitToList/739613109=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, java.lang.CharSequence], java.util.List), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2838_size/-959786421=([java.util.List], int), getPathMatcher/-450340845=([java.nio.file.FileSystem, java.lang.String], java.nio.file.PathMatcher), arr-String-init=([], java.lang.String[]), getPath/-148735200=([java.nio.file.FileSystem, java.lang.String, java.lang.String[]], java.nio.file.Path), var1906_of/-1269712239=([java.lang.Enum], java.util.EnumSet), cast-from-var3772-to-var3661=([java.nio.file.FileVisitOption], java.lang.Enum), var912-init=([], com.google.javascript.jscomp.CommandLineRunner$1), <init>/-997981811=([com.google.javascript.jscomp.CommandLineRunner$1, java.nio.file.PathMatcher, boolean, java.util.Set, java.util.Map], void), var2688_walkFileTree/-2013667260=([java.nio.file.Path, java.util.Set, int, java.nio.file.FileVisitor], java.nio.file.Path), cast-from-var1906-to-var480=([java.util.EnumSet], java.util.Set), cast-from-var912-to-var1421=([com.google.javascript.jscomp.CommandLineRunner$1], java.nio.file.FileVisitor)}
; {var623=r14, var368=null_type, var2269=java.util.Map, var2760=r6, var480=java.util.Set, var1349=r5, var3783=java.nio.file.FileSystem, var1416=java.nio.file.FileSystems, var3201=r0, var1474=$i0, var1618=$z5, var2413=$z4, var1211=z0, var461=java.io.File, var133=$r1, var269=$z1, var2660=$r15, var1858=r2, var76=$r3, var585=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var2497=$r4, var2838=java.util.List, var3323=$r13, var1591=r16, var3026=i2, var1527=$i3, var3547=$r17, var969=java.nio.file.PathMatcher, var1697=$r18, var3183=$r19, var3924=java.nio.file.Path, var2369=$r20, var3772=java.nio.file.FileVisitOption, var2313=$r21, var1906=java.util.EnumSet, var3661=java.lang.Enum, var1682=$r22, var912=com.google.javascript.jscomp.CommandLineRunner$1, var2475=$r23, var2688=java.nio.file.Files, var1421=java.nio.file.FileVisitor, var307=2147483647}
; {r14=var623, null_type=var368, java.util.Map=var2269, r6=var2760, java.util.Set=var480, r5=var1349, java.nio.file.FileSystem=var3783, java.nio.file.FileSystems=var1416, r0=var3201, $i0=var1474, $z5=var1618, $z4=var2413, z0=var1211, java.io.File=var461, $r1=var133, $z1=var269, $r15=var2660, r2=var1858, $r3=var76, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var585, $r4=var2497, java.util.List=var2838, $r13=var3323, r16=var1591, i2=var3026, $i3=var1527, $r17=var3547, java.nio.file.PathMatcher=var969, $r18=var1697, $r19=var3183, java.nio.file.Path=var3924, $r20=var2369, java.nio.file.FileVisitOption=var3772, $r21=var2313, java.util.EnumSet=var1906, java.lang.Enum=var3661, $r22=var1682, com.google.javascript.jscomp.CommandLineRunner$1=var912, $r23=var2475, java.nio.file.Files=var2688, java.nio.file.FileVisitor=var1421, 2147483647=var307}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r14 := @parameter0: java.lang.String;	r6 := @parameter1: java.util.Map;	r5 := @parameter2: java.util.Set;	r0 = staticinvoke <java.nio.file.FileSystems: java.nio.file.FileSystem getDefault()>();	$i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(33);	if $i0 != 0 goto $z5 = 0;	$z5 = 0;	$z4 = 0;	z0 = $z5;	if $z4 == 0 goto $r1 = <java.io.File: java.lang.String separator>;	$r1 = <java.io.File: java.lang.String separator>;	$z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("\\");	if $z1 == 0 goto $r15 = <java.io.File: java.lang.String separator>;	$r15 = "\\\\";	goto [?= r2 = $r15];	r2 = $r15;	$r3 = <java.io.File: java.lang.String separator>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(java.lang.String)>($r3);	$r13 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.util.List splitToList(java.lang.CharSequence)>(r14);	r16 = ".";	i2 = 0;	$i3 = interfaceinvoke $r13.<java.util.List: int size()>();	if i2 >= $i3 goto $r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>(r16, r2, r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("glob:\u0001\u0001\u0001");	$r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>(r16, r2, r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("glob:\u0001\u0001\u0001");	$r18 = virtualinvoke r0.<java.nio.file.FileSystem: java.nio.file.PathMatcher getPathMatcher(java.lang.String)>($r17);	$r19 = newarray (java.lang.String)[0];	$r20 = virtualinvoke r0.<java.nio.file.FileSystem: java.nio.file.Path getPath(java.lang.String,java.lang.String[])>(r16, $r19);	$r21 = <java.nio.file.FileVisitOption: java.nio.file.FileVisitOption FOLLOW_LINKS>;	$r22 = staticinvoke <java.util.EnumSet: java.util.EnumSet of(java.lang.Enum)>($r21);	$r23 = new com.google.javascript.jscomp.CommandLineRunner$1;	specialinvoke $r23.<com.google.javascript.jscomp.CommandLineRunner$1: void <init>(java.nio.file.PathMatcher,boolean,java.util.Set,java.util.Map)>($r18, z0, r5, r6);	staticinvoke <java.nio.file.Files: java.nio.file.Path walkFileTree(java.nio.file.Path,java.util.Set,int,java.nio.file.FileVisitor)>($r20, $r22, 2147483647, $r23);	return
;block_num 8