(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1147 0)
(declare-sort var2120 0)
(declare-sort var1431 0)
(declare-sort var1623 0)
(declare-sort var3775 0)
(declare-sort var703 0)
(declare-sort var1067 0)
(declare-sort var1501 0)
(declare-sort var422 0)
(declare-sort var1743 0)
(declare-sort var3587 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSyntax/1678635008 (var1147) var1067)
(declare-fun getStringInfo/1706019720 (var1147) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getObjects/1665629231 (var1147) (Array Int var1743))
(declare-fun getDefaultInstance/380878571 (var1147) var3587)
(declare-fun getClass/1258963082 (var1743) ClassObject)
(declare-fun cast-from-var3587-to-var1743 (var3587) var1743)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun arr-var1743-init () (Array Int var1743))
(declare-fun var1501-init () var1501)
(declare-fun <init>/-1806030460 (var1501 (Array Int Int) (Array Int var1743) Int Int var3587 Bool Bool (Array Int Int) Int Int var2120 var1431 var1623 var3775 var703) void)
(declare-const null-var1147 var1147)
(declare-const null-var2120 var2120)
(declare-const null-var1431 var1431)
(declare-const null-var1623 var1623)
(declare-const null-var3775 var3775)
(declare-const null-var703 var703)
(declare-const var1067-PROTO3 var1067)
(declare-const var1501-EMPTY_INT_ARRAY (Array Int Int))
(declare-const var1501-UNSAFE var422)
(declare-const var3393 var1147) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo 
(assert (not (= var3393 null-var1147)))
(declare-const var170 var2120) ; Statement: r4 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.NewInstanceSchema 
(assert (not (= var170 null-var2120)))
(declare-const var3018 var1431) ; Statement: r5 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.ListFieldSchema 
(assert (not (= var3018 null-var1431)))
(declare-const var3061 var1623) ; Statement: r6 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema 
(assert (not (= var3061 null-var1623)))
(declare-const var1816 var3775) ; Statement: r7 := @parameter4: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchema 
(assert (not (= var1816 null-var3775)))
(declare-const var1968 var703) ; Statement: r8 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapFieldSchema 
(assert (not (= var1968 null-var703)))
(assert true)
(define-const var1508 var1067 (getSyntax/1678635008 var3393)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtoSyntax getSyntax()>() 
(define-const var2706 var1067 var1067-PROTO3) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtoSyntax: com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtoSyntax PROTO3> 
 ; Statement: if $r2 != $r1 goto $z3 = 0 
(assert (not (= var1508 var2706))) ; Cond: $r2 != $r1 
(define-const var1171 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var2787 Bool var1171) ; Statement: z0 = $z3 
(assert true)
(define-const var1082 String (getStringInfo/1706019720 var3393)) ; Statement: $r24 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo: java.lang.String getStringInfo()>() 
(assert true)
(define-const var1564 Int (length/-134980193 var1082)) ; Statement: $i125 = virtualinvoke $r24.<java.lang.String: int length()>() 
(define-const var1876 Int 1) ; Statement: i127 = 1 
(assert (and true (and (> (str.len var1082) 0) (<= 0 0))))
(define-const var3226 Int (charAt/698050440 var1082 0)) ; Statement: $c126 = virtualinvoke $r24.<java.lang.String: char charAt(int)>(0) 
(define-const var3572 Int (cast-from-Int-to-Int var3226)) ; Statement: $i212 = (int) $c126 
(define-const var803 Int (cast-from-Int-to-Int 55296)) ; Statement: $i214 = (int) 55296 
 ; Statement: if $i212 < $i214 goto i128 = i127 + 1 
(assert (< var3572 var803)) ; Cond: $i212 < $i214 
(define-const var2203 Int (+ var1876 1)) ; Statement: i128 = i127 + 1 
(assert (and true (and (> (str.len var1082) var1876) (<= 0 var1876))))
(define-const var3194 Int (charAt/698050440 var1082 var1876)) ; Statement: $c124 = virtualinvoke $r24.<java.lang.String: char charAt(int)>(i127) 
(define-const var2945 Int (cast-from-Int-to-Int var3194)) ; Statement: $i218 = (int) $c124 
(define-const var3498 Int var2945) ; Statement: i129 = $i218 
(define-const var1441 Int (cast-from-Int-to-Int var3194)) ; Statement: $i219 = (int) $c124 
(define-const var2753 Int (cast-from-Int-to-Int 55296)) ; Statement: $i221 = (int) 55296 
 ; Statement: if $i219 < $i221 goto (branch) 
(assert (< var1441 var2753)) ; Cond: $i219 < $i221 
 ; Statement: if i129 != 0 goto i139 = i128 + 1 
(assert (not (not (= var3498 0)))) ; Negate: Cond: i129 != 0  
(define-const var1632 Int 0) ; Statement: i132 = 0 
(define-const var1746 Int 0) ; Statement: i133 = 0 
(define-const var965 Int 0) ; Statement: i134 = 0 
(define-const var361 Int 0) ; Statement: i135 = 0 
(define-const var2001 Int 0) ; Statement: i136 = 0 
(define-const var103 Int 0) ; Statement: i137 = 0 
(define-const var727 (Array Int Int) var1501-EMPTY_INT_ARRAY) ; Statement: r25 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageSchema: int[] EMPTY_INT_ARRAY> 
(define-const var1873 Int 0) ; Statement: i138 = 0 
 ; Statement: goto [?= $r26 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageSchema: sun.misc.Unsafe UNSAFE>] 
(assert true) ; Non Conditional
(define-const var3832 var422 var1501-UNSAFE) ; Statement: $r26 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageSchema: sun.misc.Unsafe UNSAFE> 
(assert true)
(define-const var1203 (Array Int var1743) (getObjects/1665629231 var3393)) ; Statement: $r27 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo: java.lang.Object[] getObjects()>() 
(define-const var3696 Int 0) ; Statement: i172 = 0 
(assert true)
(define-const var69 var3587 (getDefaultInstance/380878571 var3393)) ; Statement: $r28 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite getDefaultInstance()>() 
(assert true)
(define-const var2103 ClassObject (getClass/1258963082 (cast-from-var3587-to-var1743 var69))) ; Statement: $r29 = virtualinvoke $r28.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var3719 Int (* var361 3)) ; Statement: $i173 = i135 * 3 
(define-const var2390 (Array Int Int) arr-Int-init) ; Statement: $r30 = newarray (int)[$i173] 
(define-const var1253 Int (* var361 2)) ; Statement: $i174 = i135 * 2 
(define-const var1638 (Array Int var1743) arr-var1743-init) ; Statement: $r31 = newarray (java.lang.Object)[$i174] 
(define-const var1783 Int var103) ; Statement: i175 = i137 
(define-const var1453 Int (+ var103 var2001)) ; Statement: i176 = i137 + i136 
(define-const var3704 Int 0) ; Statement: i177 = 0 
(assert true) ; Non Conditional
 ; Statement: if i128 >= $i125 goto $r37 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageSchema 
(assert (>= var2203 var1564)) ; Cond: i128 >= $i125 
(define-const var151 var1501 var1501-init) ; Statement: $r37 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageSchema 
(assert true)
(define-const var1129 var3587 (getDefaultInstance/380878571 var3393)) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite getDefaultInstance()>() 
(define-const var3601 Int (+ var103 var2001)) ; Statement: $i3 = i137 + i136 
(assert true)
;(assert (<init>/-1806030460 var151 var2390 var1638 var1746 var965 var1129 var2787 (ite (= 1 0) true false) var727 var103 var3601 var170 var3018 var3061 var1816 var1968)) ; Statement: specialinvoke $r37.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageSchema: void <init>(int[],java.lang.Object[],int,int,com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite,boolean,boolean,int[],int,int,com.google.javascript.jscomp.jarjar.com.google.protobuf.NewInstanceSchema,com.google.javascript.jscomp.jarjar.com.google.protobuf.ListFieldSchema,com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema,com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchema,com.google.javascript.jscomp.jarjar.com.google.protobuf.MapFieldSchema)>($r30, $r31, i133, i134, $r9, z0, 0, r25, i137, $i3, r4, r5, r6, r7, r8) 

(declare-const var151!1 var1501)
(declare-const var2390!1 (Array Int Int))
(declare-const var1638!1 (Array Int var1743))
(declare-const var1746!1 Int)
(declare-const var965!1 Int)
(declare-const var1129!1 var3587)
(declare-const var2787!1 Bool)
(declare-const var2402 Int)
(declare-const var727!1 (Array Int Int))
(declare-const var103!1 Int)
(declare-const var3601!1 Int)
(declare-const var170!1 var2120)
(declare-const var3018!1 var1431)
(declare-const var3061!1 var1623)
(declare-const var1816!1 var3775)
(declare-const var1968!1 var703)
 ; Statement: return $r37 
(check-sat)
(get-model)
(get-unsat-core)
; {getSyntax/1678635008=([com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo], com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtoSyntax), getStringInfo/1706019720=([com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), getObjects/1665629231=([com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo], java.lang.Object[]), getDefaultInstance/380878571=([com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo], com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3587-to-var1743=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite], java.lang.Object), arr-Int-init=([], int[]), arr-var1743-init=([], java.lang.Object[]), var1501-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageSchema), <init>/-1806030460=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageSchema, int[], java.lang.Object[], int, int, com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite, boolean, boolean, int[], int, int, com.google.javascript.jscomp.jarjar.com.google.protobuf.NewInstanceSchema, com.google.javascript.jscomp.jarjar.com.google.protobuf.ListFieldSchema, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema, com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchema, com.google.javascript.jscomp.jarjar.com.google.protobuf.MapFieldSchema], void)}
; {var1147=com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo, var3393=r0, var2120=com.google.javascript.jscomp.jarjar.com.google.protobuf.NewInstanceSchema, var170=r4, var1431=com.google.javascript.jscomp.jarjar.com.google.protobuf.ListFieldSchema, var3018=r5, var1623=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema, var3061=r6, var3775=com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchema, var1816=r7, var703=com.google.javascript.jscomp.jarjar.com.google.protobuf.MapFieldSchema, var1968=r8, var1067=com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtoSyntax, var1508=$r2, var2706=$r1, var1171=$z3, var2787=z0, var1082=$r24, var1564=$i125, var1876=i127, var3226=$c126, var3572=$i212, var803=$i214, var2203=i128, var3194=$c124, var2945=$i218, var3498=i129, var1441=$i219, var2753=$i221, var1632=i132, var1746=i133, var965=i134, var361=i135, var2001=i136, var103=i137, var1501=com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageSchema, var727=r25, var1873=i138, var422=sun.misc.Unsafe, var3832=$r26, var1743=java.lang.Object, var1203=$r27, var3696=i172, var3587=com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite, var69=$r28, var2103=$r29, var3719=$i173, var2390=$r30, var1253=$i174, var1638=$r31, var1783=i175, var1453=i176, var3704=i177, var151=$r37, var1129=$r9, var3601=$i3, var2402=0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo=var1147, r0=var3393, com.google.javascript.jscomp.jarjar.com.google.protobuf.NewInstanceSchema=var2120, r4=var170, com.google.javascript.jscomp.jarjar.com.google.protobuf.ListFieldSchema=var1431, r5=var3018, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema=var1623, r6=var3061, com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchema=var3775, r7=var1816, com.google.javascript.jscomp.jarjar.com.google.protobuf.MapFieldSchema=var703, r8=var1968, com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtoSyntax=var1067, $r2=var1508, $r1=var2706, $z3=var1171, z0=var2787, $r24=var1082, $i125=var1564, i127=var1876, $c126=var3226, $i212=var3572, $i214=var803, i128=var2203, $c124=var3194, $i218=var2945, i129=var3498, $i219=var1441, $i221=var2753, i132=var1632, i133=var1746, i134=var965, i135=var361, i136=var2001, i137=var103, com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageSchema=var1501, r25=var727, i138=var1873, sun.misc.Unsafe=var422, $r26=var3832, java.lang.Object=var1743, $r27=var1203, i172=var3696, com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite=var3587, $r28=var69, $r29=var2103, $i173=var3719, $r30=var2390, $i174=var1253, $r31=var1638, i175=var1783, i176=var1453, i177=var3704, $r37=var151, $r9=var1129, $i3=var3601, 0=var2402}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 2}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo;	r4 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.NewInstanceSchema;	r5 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.ListFieldSchema;	r6 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema;	r7 := @parameter4: com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchema;	r8 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapFieldSchema;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtoSyntax getSyntax()>();	$r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtoSyntax: com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtoSyntax PROTO3>;	if $r2 != $r1 goto $z3 = 0;	$z3 = 0;	z0 = $z3;	$r24 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo: java.lang.String getStringInfo()>();	$i125 = virtualinvoke $r24.<java.lang.String: int length()>();	i127 = 1;	$c126 = virtualinvoke $r24.<java.lang.String: char charAt(int)>(0);	$i212 = (int) $c126;	$i214 = (int) 55296;	if $i212 < $i214 goto i128 = i127 + 1;	i128 = i127 + 1;	$c124 = virtualinvoke $r24.<java.lang.String: char charAt(int)>(i127);	$i218 = (int) $c124;	i129 = $i218;	$i219 = (int) $c124;	$i221 = (int) 55296;	if $i219 < $i221 goto (branch);	if i129 != 0 goto i139 = i128 + 1;	i132 = 0;	i133 = 0;	i134 = 0;	i135 = 0;	i136 = 0;	i137 = 0;	r25 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageSchema: int[] EMPTY_INT_ARRAY>;	i138 = 0;	goto [?= $r26 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageSchema: sun.misc.Unsafe UNSAFE>];	$r26 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageSchema: sun.misc.Unsafe UNSAFE>;	$r27 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo: java.lang.Object[] getObjects()>();	i172 = 0;	$r28 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite getDefaultInstance()>();	$r29 = virtualinvoke $r28.<java.lang.Object: java.lang.Class getClass()>();	$i173 = i135 * 3;	$r30 = newarray (int)[$i173];	$i174 = i135 * 2;	$r31 = newarray (java.lang.Object)[$i174];	i175 = i137;	i176 = i137 + i136;	i177 = 0;	if i128 >= $i125 goto $r37 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageSchema;	$r37 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageSchema;	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.RawMessageInfo: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite getDefaultInstance()>();	$i3 = i137 + i136;	specialinvoke $r37.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageSchema: void <init>(int[],java.lang.Object[],int,int,com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite,boolean,boolean,int[],int,int,com.google.javascript.jscomp.jarjar.com.google.protobuf.NewInstanceSchema,com.google.javascript.jscomp.jarjar.com.google.protobuf.ListFieldSchema,com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSchema,com.google.javascript.jscomp.jarjar.com.google.protobuf.ExtensionSchema,com.google.javascript.jscomp.jarjar.com.google.protobuf.MapFieldSchema)>($r30, $r31, i133, i134, $r9, z0, 0, r25, i137, $i3, r4, r5, r6, r7, r8);	return $r37
;block_num 9