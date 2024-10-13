(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var329 0)
(declare-sort var3228 0)
(declare-sort var3910 0)
(declare-sort var1597 0)
(declare-sort var77 0)
(declare-sort var481 0)
(declare-sort var3075 0)
(declare-sort var1236 0)
(declare-sort var122 0)
(declare-sort var791 0)
(declare-sort var1252 0)
(declare-sort var2866 0)
(declare-sort var2004 0)
(declare-sort var3440 0)
(declare-sort var3993 0)
(declare-sort var3928 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var77_getDefault/273610319 () var1597)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var3075_on/508924409 (String) var3075)
(declare-fun splitToList/739613109 (var3075 String) var1236)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1236_size/-959786421 (var1236) Int)
(declare-fun getPathMatcher/-450340845 (var1597 String) var122)
(declare-fun arr-String-init () (Array Int String))
(declare-fun getPath/-148735200 (var1597 String (Array Int String)) var791)
(declare-fun var2866_of/-1269712239 (var2004) var2866)
(declare-fun cast-from-var1252-to-var2004 (var1252) var2004)
(declare-fun var3440-init () var3440)
(declare-fun <init>/-997981811 (var3440 var122 Bool var3910 var3228) void)
(declare-fun var3993_walkFileTree/-2013667260 (var791 var3910 Int var3928) var791)
(declare-fun cast-from-var2866-to-var3910 (var2866) var3910)
(declare-fun cast-from-var3440-to-var3928 (var3440) var3928)
(declare-const null-String String)
(declare-const null-var3228 var3228)
(declare-const null-var3910 var3910)
(declare-const var481-separator String)
(declare-const var1252-FOLLOW_LINKS var1252)
(declare-const var2932 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var2932 null-String)))
(declare-const var1539 var3228) ; Statement: r6 := @parameter1: java.util.Map 
(assert (not (= var1539 null-var3228)))
(declare-const var126 var3910) ; Statement: r5 := @parameter2: java.util.Set 
(assert (not (= var126 null-var3910)))
(define-const var348 var1597 var77_getDefault/273610319) ; Statement: r0 = staticinvoke <java.nio.file.FileSystems: java.nio.file.FileSystem getDefault()>() 
(assert true)
(define-const var2248 Int (indexOf/-1037706067 var2932 33)) ; Statement: $i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(33) 
 ; Statement: if $i0 != 0 goto $z5 = 0 
(assert (not (not (= var2248 0)))) ; Negate: Cond: $i0 != 0  
(define-const var3040 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
(define-const var3033 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= z0 = $z5] 
(assert true) ; Non Conditional
(define-const var1931 Bool var3040) ; Statement: z0 = $z5 
 ; Statement: if $z4 == 0 goto $r1 = <java.io.File: java.lang.String separator> 
(assert (= (ite var3033 1 0) 0)) ; Cond: $z4 == 0 
(define-const var1371 String var481-separator) ; Statement: $r1 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var1174 Bool (= var1371 "\u005c")) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("\\") 
 ; Statement: if $z1 == 0 goto $r15 = <java.io.File: java.lang.String separator> 
(assert (= (ite var1174 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3088 String var481-separator) ; Statement: $r15 = <java.io.File: java.lang.String separator> 
(assert true) ; Non Conditional
(define-const var3604 String var3088) ; Statement: r2 = $r15 
(define-const var1242 String var481-separator) ; Statement: $r3 = <java.io.File: java.lang.String separator> 
(define-const var1313 var3075 (var3075_on/508924409 var1242)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(java.lang.String)>($r3) 
(assert true)
(define-const var3756 var1236 (splitToList/739613109 var1313 (cast-from-String-to-String var2932))) ; Statement: $r13 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.util.List splitToList(java.lang.CharSequence)>(r14) 
(define-const var622 String ".") ; Statement: r16 = "." 
(define-const var3657 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var28 Int (var1236_size/-959786421 var3756)) ; Statement: $i3 = interfaceinvoke $r13.<java.util.List: int size()>() 
 ; Statement: if i2 >= $i3 goto $r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>(r16, r2, r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("glob:\u0001\u0001\u0001") 
(assert (>= var3657 var28)) ; Cond: i2 >= $i3 
(define-const var3667 String (str.++ "glob:\u0001\u0001\u0001" var622 var3604 var2932)) ; Statement: $r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>(r16, r2, r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("glob:\u0001\u0001\u0001") 
(assert true)
(define-const var1867 var122 (getPathMatcher/-450340845 var348 var3667)) ; Statement: $r18 = virtualinvoke r0.<java.nio.file.FileSystem: java.nio.file.PathMatcher getPathMatcher(java.lang.String)>($r17) 
(define-const var3650 (Array Int String) arr-String-init) ; Statement: $r19 = newarray (java.lang.String)[0] 
(assert true)
(define-const var104 var791 (getPath/-148735200 var348 var622 var3650)) ; Statement: $r20 = virtualinvoke r0.<java.nio.file.FileSystem: java.nio.file.Path getPath(java.lang.String,java.lang.String[])>(r16, $r19) 
(define-const var2860 var1252 var1252-FOLLOW_LINKS) ; Statement: $r21 = <java.nio.file.FileVisitOption: java.nio.file.FileVisitOption FOLLOW_LINKS> 
(define-const var1051 var2866 (var2866_of/-1269712239 (cast-from-var1252-to-var2004 var2860))) ; Statement: $r22 = staticinvoke <java.util.EnumSet: java.util.EnumSet of(java.lang.Enum)>($r21) 
(define-const var1825 var3440 var3440-init) ; Statement: $r23 = new com.google.javascript.jscomp.CommandLineRunner$1 
(assert true)
;(assert (<init>/-997981811 var1825 var1867 var1931 var126 var1539)) ; Statement: specialinvoke $r23.<com.google.javascript.jscomp.CommandLineRunner$1: void <init>(java.nio.file.PathMatcher,boolean,java.util.Set,java.util.Map)>($r18, z0, r5, r6) 

(declare-const var1825!1 var3440)
(declare-const var1867!1 var122)
(declare-const var1931!1 Bool)
(declare-const var126!1 var3910)
(declare-const var1539!1 var3228)
;(assert (var3993_walkFileTree/-2013667260 var104 (cast-from-var2866-to-var3910 var1051) 2147483647 (cast-from-var3440-to-var3928 var1825!1))) ; Statement: staticinvoke <java.nio.file.Files: java.nio.file.Path walkFileTree(java.nio.file.Path,java.util.Set,int,java.nio.file.FileVisitor)>($r20, $r22, 2147483647, $r23) 

(declare-const var104!1 var791)
(declare-const var1051!1 var2866)
(declare-const var3382 Int)
(declare-const var1825!2 var3440)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var77_getDefault/273610319=([], java.nio.file.FileSystem), indexOf/-1037706067=([java.lang.String, int], int), var3075_on/508924409=([java.lang.String], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter), splitToList/739613109=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, java.lang.CharSequence], java.util.List), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1236_size/-959786421=([java.util.List], int), getPathMatcher/-450340845=([java.nio.file.FileSystem, java.lang.String], java.nio.file.PathMatcher), arr-String-init=([], java.lang.String[]), getPath/-148735200=([java.nio.file.FileSystem, java.lang.String, java.lang.String[]], java.nio.file.Path), var2866_of/-1269712239=([java.lang.Enum], java.util.EnumSet), cast-from-var1252-to-var2004=([java.nio.file.FileVisitOption], java.lang.Enum), var3440-init=([], com.google.javascript.jscomp.CommandLineRunner$1), <init>/-997981811=([com.google.javascript.jscomp.CommandLineRunner$1, java.nio.file.PathMatcher, boolean, java.util.Set, java.util.Map], void), var3993_walkFileTree/-2013667260=([java.nio.file.Path, java.util.Set, int, java.nio.file.FileVisitor], java.nio.file.Path), cast-from-var2866-to-var3910=([java.util.EnumSet], java.util.Set), cast-from-var3440-to-var3928=([com.google.javascript.jscomp.CommandLineRunner$1], java.nio.file.FileVisitor)}
; {var2932=r14, var329=null_type, var3228=java.util.Map, var1539=r6, var3910=java.util.Set, var126=r5, var1597=java.nio.file.FileSystem, var77=java.nio.file.FileSystems, var348=r0, var2248=$i0, var3040=$z5, var3033=$z4, var1931=z0, var481=java.io.File, var1371=$r1, var1174=$z1, var3088=$r15, var3604=r2, var1242=$r3, var3075=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var1313=$r4, var1236=java.util.List, var3756=$r13, var622=r16, var3657=i2, var28=$i3, var3667=$r17, var122=java.nio.file.PathMatcher, var1867=$r18, var3650=$r19, var791=java.nio.file.Path, var104=$r20, var1252=java.nio.file.FileVisitOption, var2860=$r21, var2866=java.util.EnumSet, var2004=java.lang.Enum, var1051=$r22, var3440=com.google.javascript.jscomp.CommandLineRunner$1, var1825=$r23, var3993=java.nio.file.Files, var3928=java.nio.file.FileVisitor, var3382=2147483647}
; {r14=var2932, null_type=var329, java.util.Map=var3228, r6=var1539, java.util.Set=var3910, r5=var126, java.nio.file.FileSystem=var1597, java.nio.file.FileSystems=var77, r0=var348, $i0=var2248, $z5=var3040, $z4=var3033, z0=var1931, java.io.File=var481, $r1=var1371, $z1=var1174, $r15=var3088, r2=var3604, $r3=var1242, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var3075, $r4=var1313, java.util.List=var1236, $r13=var3756, r16=var622, i2=var3657, $i3=var28, $r17=var3667, java.nio.file.PathMatcher=var122, $r18=var1867, $r19=var3650, java.nio.file.Path=var791, $r20=var104, java.nio.file.FileVisitOption=var1252, $r21=var2860, java.util.EnumSet=var2866, java.lang.Enum=var2004, $r22=var1051, com.google.javascript.jscomp.CommandLineRunner$1=var3440, $r23=var1825, java.nio.file.Files=var3993, java.nio.file.FileVisitor=var3928, 2147483647=var3382}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r14 := @parameter0: java.lang.String;	r6 := @parameter1: java.util.Map;	r5 := @parameter2: java.util.Set;	r0 = staticinvoke <java.nio.file.FileSystems: java.nio.file.FileSystem getDefault()>();	$i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(33);	if $i0 != 0 goto $z5 = 0;	$z5 = 1;	$z4 = 1;	goto [?= z0 = $z5];	z0 = $z5;	if $z4 == 0 goto $r1 = <java.io.File: java.lang.String separator>;	$r1 = <java.io.File: java.lang.String separator>;	$z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("\\");	if $z1 == 0 goto $r15 = <java.io.File: java.lang.String separator>;	$r15 = <java.io.File: java.lang.String separator>;	r2 = $r15;	$r3 = <java.io.File: java.lang.String separator>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(java.lang.String)>($r3);	$r13 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.util.List splitToList(java.lang.CharSequence)>(r14);	r16 = ".";	i2 = 0;	$i3 = interfaceinvoke $r13.<java.util.List: int size()>();	if i2 >= $i3 goto $r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>(r16, r2, r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("glob:\u0001\u0001\u0001");	$r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>(r16, r2, r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("glob:\u0001\u0001\u0001");	$r18 = virtualinvoke r0.<java.nio.file.FileSystem: java.nio.file.PathMatcher getPathMatcher(java.lang.String)>($r17);	$r19 = newarray (java.lang.String)[0];	$r20 = virtualinvoke r0.<java.nio.file.FileSystem: java.nio.file.Path getPath(java.lang.String,java.lang.String[])>(r16, $r19);	$r21 = <java.nio.file.FileVisitOption: java.nio.file.FileVisitOption FOLLOW_LINKS>;	$r22 = staticinvoke <java.util.EnumSet: java.util.EnumSet of(java.lang.Enum)>($r21);	$r23 = new com.google.javascript.jscomp.CommandLineRunner$1;	specialinvoke $r23.<com.google.javascript.jscomp.CommandLineRunner$1: void <init>(java.nio.file.PathMatcher,boolean,java.util.Set,java.util.Map)>($r18, z0, r5, r6);	staticinvoke <java.nio.file.Files: java.nio.file.Path walkFileTree(java.nio.file.Path,java.util.Set,int,java.nio.file.FileVisitor)>($r20, $r22, 2147483647, $r23);	return
;block_num 8