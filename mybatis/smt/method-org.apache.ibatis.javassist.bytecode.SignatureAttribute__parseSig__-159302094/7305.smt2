(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var442 0)
(declare-sort var1346 0)
(declare-sort var2729 0)
(declare-sort var97 0)
(declare-sort var2568 0)
(declare-sort var2101 0)
(declare-sort var1082 0)
(declare-sort var770 0)
(declare-sort var2145 0)
(declare-sort var2254 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1346-init () var1346)
(declare-fun <init>/1670321862 (var1346 var2729) void)
(declare-fun var2568_parseTypeParams/-1788046673 (String var1346) (Array Int var97))
(declare-fun var2568_parseClassType/921469492 (String var1346) var2101)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1082-init () var1082)
(declare-fun <init>/-325640736 (var1082) void)
(declare-fun position/442744389 (var1346) Int)
(declare-fun var770_size/-959786421 (var770) Int)
(declare-fun cast-from-var1082-to-var770 (var1082) var770)
(declare-fun arr-var2101-init () (Array Int var2101))
(declare-fun var770_toArray/-775711681 (var770 (Array Int var2145)) (Array Int var2145))
(declare-fun cast-from-__Array__Int__var2101__-to-__Array__Int__var2145__ ((Array Int var2101)) (Array Int var2145))
(declare-fun cast-from-__Array__Int__var2145__-to-__Array__Int__var2101__ ((Array Int var2145)) (Array Int var2101))
(declare-fun var2254-init () var2254)
(declare-fun <init>/1869322028 (var2254 (Array Int var97) var2101 (Array Int var2101)) void)
(declare-const null-String String)
(declare-const null-NullType var442)
(declare-const null-var2729 var2729)
(declare-const var1341 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1341 null-String)))
(define-const var1513 var1346 var1346-init) ; Statement: $r10 = new org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor 
(assert true)
;(assert (<init>/1670321862 var1513 null-var2729)) ; Statement: specialinvoke $r10.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: void <init>(org.apache.ibatis.javassist.bytecode.SignatureAttribute$1)>(null) 

(declare-const var1513!1 var1346)
(declare-const var1254 var442)
(define-const var3547 (Array Int var97) (var2568_parseTypeParams/-1788046673 var1341 var1513!1)) ; Statement: r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[] parseTypeParams(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r1, $r10) 
(define-const var3097 var2101 (var2568_parseClassType/921469492 var1341 var1513!1)) ; Statement: r3 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType parseClassType(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r1, $r10) 
(assert true)
(define-const var3367 Int (length/-134980193 var1341)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var777 var1082 var1082-init) ; Statement: $r11 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var777)) ; Statement: specialinvoke $r11.<java.util.ArrayList: void <init>()>() 

(declare-const var777!1 var1082)
(assert true) ; Non Conditional
(define-const var1556 Int (position/442744389 var1513!1)) ; Statement: $i1 = $r10.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
 ; Statement: if $i1 >= i0 goto $i2 = interfaceinvoke $r11.<java.util.List: int size()>() 
(assert (>= var1556 var3367)) ; Cond: $i1 >= i0 
(define-const var3109 Int (var770_size/-959786421 (cast-from-var1082-to-var770 var777!1))) ; Statement: $i2 = interfaceinvoke $r11.<java.util.List: int size()>() 
(define-const var636 (Array Int var2101) arr-var2101-init) ; Statement: $r5 = newarray (org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)[$i2] 
(define-const var74 (Array Int var2145) (var770_toArray/-775711681 (cast-from-var1082-to-var770 var777!1) (cast-from-__Array__Int__var2101__-to-__Array__Int__var2145__ var636))) ; Statement: $r6 = interfaceinvoke $r11.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r5) 
(define-const var3214 (Array Int var2101) (cast-from-__Array__Int__var2145__-to-__Array__Int__var2101__ var74)) ; Statement: $r8 = (org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType[]) $r6 
(define-const var466 var2254 var2254-init) ; Statement: $r12 = new org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature 
(assert true)
;(assert (<init>/1869322028 var466 var3547 var3097 var3214)) ; Statement: specialinvoke $r12.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature: void <init>(org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[],org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType,org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType[])>(r2, r3, $r8) 

(declare-const var466!1 var2254)
(declare-const var3547!1 (Array Int var97))
(declare-const var3097!1 var2101)
(declare-const var3214!1 (Array Int var2101))
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var1346-init=([], org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor), <init>/1670321862=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, org.apache.ibatis.javassist.bytecode.SignatureAttribute$1], void), var2568_parseTypeParams/-1788046673=([java.lang.String, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[]), var2568_parseClassType/921469492=([java.lang.String, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType), length/-134980193=([java.lang.String], int), var1082-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), position/442744389=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], int), var770_size/-959786421=([java.util.List], int), cast-from-var1082-to-var770=([java.util.ArrayList], java.util.List), arr-var2101-init=([], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType[]), var770_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__var2101__-to-__Array__Int__var2145__=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType[]], java.lang.Object[]), cast-from-__Array__Int__var2145__-to-__Array__Int__var2101__=([java.lang.Object[]], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType[]), var2254-init=([], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature), <init>/1869322028=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType[]], void)}
; {var1341=r1, var442=null_type, var1346=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, var1513=$r10, var2729=org.apache.ibatis.javassist.bytecode.SignatureAttribute$1, var1254=null, var97=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter, var2568=org.apache.ibatis.javassist.bytecode.SignatureAttribute, var3547=r2, var2101=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType, var3097=r3, var3367=i0, var1082=java.util.ArrayList, var777=$r11, var1556=$i1, var770=java.util.List, var3109=$i2, var636=$r5, var2145=java.lang.Object, var74=$r6, var3214=$r8, var2254=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature, var466=$r12}
; {r1=var1341, null_type=var442, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor=var1346, $r10=var1513, org.apache.ibatis.javassist.bytecode.SignatureAttribute$1=var2729, null=var1254, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter=var97, org.apache.ibatis.javassist.bytecode.SignatureAttribute=var2568, r2=var3547, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType=var2101, r3=var3097, i0=var3367, java.util.ArrayList=var1082, $r11=var777, $i1=var1556, java.util.List=var770, $i2=var3109, $r5=var636, java.lang.Object=var2145, $r6=var74, $r8=var3214, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature=var2254, $r12=var466}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r10 = new org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor;	specialinvoke $r10.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: void <init>(org.apache.ibatis.javassist.bytecode.SignatureAttribute$1)>(null);	r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[] parseTypeParams(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r1, $r10);	r3 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType parseClassType(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r1, $r10);	i0 = virtualinvoke r1.<java.lang.String: int length()>();	$r11 = new java.util.ArrayList;	specialinvoke $r11.<java.util.ArrayList: void <init>()>();	$i1 = $r10.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	if $i1 >= i0 goto $i2 = interfaceinvoke $r11.<java.util.List: int size()>();	$i2 = interfaceinvoke $r11.<java.util.List: int size()>();	$r5 = newarray (org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)[$i2];	$r6 = interfaceinvoke $r11.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r5);	$r8 = (org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType[]) $r6;	$r12 = new org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature;	specialinvoke $r12.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassSignature: void <init>(org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[],org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType,org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType[])>(r2, r3, $r8);	return $r12
;block_num 3