(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var641 0)
(declare-sort var2679 0)
(declare-sort var2210 0)
(declare-sort var3593 0)
(declare-sort var767 0)
(declare-sort var2902 0)
(declare-sort var3306 0)
(declare-sort var1209 0)
(declare-sort var2838 0)
(declare-sort var1306 0)
(declare-sort var1853 0)
(declare-sort var561 0)
(declare-sort var3568 0)
(declare-sort var3036 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1306!class ClassObject)
(declare-fun toBufferList/990497982 (var2679) var2210)
(declare-fun var3593_allocate/-517473021 (Int) var3593)
(declare-fun order/1698056697 (var3593 var767) var3593)
(declare-fun var2902_add/328494887 (var2902 var3306) Bool)
(declare-fun cast-from-var2210-to-var2902 (var2210) var2902)
(declare-fun cast-from-var3593-to-var3306 (var3593) var3306)
(declare-fun var1209_determineBlockPage/-1731856665 (var2902) Int)
(declare-fun arr-var3306-init () (Array Int var3306))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var3306 (String) var3306)
(declare-fun String_format/-647569892 (var2838 String (Array Int var3306)) String)
(declare-fun var1853-init () var1853)
(declare-fun var3568_bootstrap$/1685784820 () var561)
(declare-fun <init>/230545608 (var1853 String var561) void)
(declare-fun var2902_size/-959786421 (var2902) Int)
(declare-fun arr-var3593-init () (Array Int var3593))
(declare-fun var2902_toArray/-775711681 (var2902 (Array Int var3306)) (Array Int var3306))
(declare-fun cast-from-__Array__Int__var3593__-to-__Array__Int__var3306__ ((Array Int var3593)) (Array Int var3306))
(declare-fun cast-from-__Array__Int__var3306__-to-__Array__Int__var3593__ ((Array Int var3306)) (Array Int var3593))
(declare-fun size/1247686229 (var2679) Int)
(declare-fun var3036_newInstance/-2109164230 (String (Array Int var3593) Int Int var1853) var3036)
(declare-const null-String String)
(declare-const null-var2679 var2679)
(declare-const var767-LITTLE_ENDIAN var767)
(declare-const var2838-ROOT var2838)
(declare-const null-__Array__Int__var3306__ (Array Int var3306))
(declare-const var734 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var734 null-String)))
(declare-const var979 var2679) ; Statement: r0 := @parameter1: org.apache.lucene.store.ByteBuffersDataOutput 
(assert (not (= var979 null-var2679)))
(assert true)
(define-const var1072 var2210 (toBufferList/990497982 var979)) ; Statement: r1 = virtualinvoke r0.<org.apache.lucene.store.ByteBuffersDataOutput: java.util.ArrayList toBufferList()>() 
(define-const var2118 var3593 (var3593_allocate/-517473021 0)) ; Statement: $r3 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer allocate(int)>(0) 
(define-const var2183 var767 var767-LITTLE_ENDIAN) ; Statement: $r2 = <java.nio.ByteOrder: java.nio.ByteOrder LITTLE_ENDIAN> 
(assert true)
(define-const var1962 var3593 (order/1698056697 var2118 var2183)) ; Statement: $r4 = virtualinvoke $r3.<java.nio.ByteBuffer: java.nio.ByteBuffer order(java.nio.ByteOrder)>($r2) 
;(assert (var2902_add/328494887 (cast-from-var2210-to-var2902 var1072) (cast-from-var3593-to-var3306 var1962))) ; Statement: interfaceinvoke r1.<java.util.List: boolean add(java.lang.Object)>($r4) 

(declare-const var1072!1 var2210)
(declare-const var1962!1 var3593)
(define-const var3106 Int (var1209_determineBlockPage/-1731856665 (cast-from-var2210-to-var2902 var1072!1))) ; Statement: i0 = staticinvoke <org.apache.lucene.store.ByteBuffersDataInput: int determineBlockPage(java.util.List)>(r1) 
 ; Statement: if i0 != 0 goto $i1 = staticinvoke <org.apache.lucene.util.BitUtil: int nextHighestPowerOfTwo(int)>(i0) 
(assert (not (not (= var3106 0)))) ; Negate: Cond: i0 != 0  
(define-const var425 Int 30) ; Statement: i4 = 30 
 ; Statement: goto [?= $r7 = <java.util.Locale: java.util.Locale ROOT>] 
(assert true) ; Non Conditional
(define-const var1131 var2838 var2838-ROOT) ; Statement: $r7 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var363 (Array Int var3306) arr-var3306-init) ; Statement: $r5 = newarray (java.lang.Object)[2] 
(define-const var2100 ClassObject var1306!class) ; Statement: $r6 = class "Lorg/apache/lucene/store/ByteBuffersDirectory;" 
(assert true)
(define-const var3603 String (getSimpleName/-390194377 var2100)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var363!1 (Array Int var3306))
(assert (not (= var363!1 null-__Array__Int__var3306__)))
(assert (= (select var363!1 0) (cast-from-String-to-var3306 var3603))) ; Statement: $r5[0] = $r8 
(declare-const var363!2 (Array Int var3306))
(assert (not (= var363!2 null-__Array__Int__var3306__)))
(assert (= (select var363!2 1) (cast-from-String-to-var3306 var734))) ; Statement: $r5[1] = r9 
(define-const var270 String (String_format/-647569892 var1131 "%s (file=%s)" var363!2)) ; Statement: $r16 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r7, "%s (file=%s)", $r5) 
(define-const var3816 var1853 var1853-init) ; Statement: $r10 = new org.apache.lucene.store.ByteBufferGuard 
(define-const var3855 var561 var3568_bootstrap$/1685784820) ; Statement: $r11 = staticinvoke <org.apache.lucene.store.ByteBuffersDirectory$lambda_static_2__395: org.apache.lucene.store.ByteBufferGuard$BufferCleaner bootstrap$()>() 
(assert true)
;(assert (<init>/230545608 var3816 "none" var3855)) ; Statement: specialinvoke $r10.<org.apache.lucene.store.ByteBufferGuard: void <init>(java.lang.String,org.apache.lucene.store.ByteBufferGuard$BufferCleaner)>("none", $r11) 

(declare-const var3816!1 var1853)
(declare-const var2796 String)
(declare-const var3855!1 var561)
(define-const var784 Int (var2902_size/-959786421 (cast-from-var2210-to-var2902 var1072!1))) ; Statement: $i2 = interfaceinvoke r1.<java.util.List: int size()>() 
(define-const var2056 (Array Int var3593) arr-var3593-init) ; Statement: $r12 = newarray (java.nio.ByteBuffer)[$i2] 
(define-const var801 (Array Int var3306) (var2902_toArray/-775711681 (cast-from-var2210-to-var2902 var1072!1) (cast-from-__Array__Int__var3593__-to-__Array__Int__var3306__ var2056))) ; Statement: $r13 = interfaceinvoke r1.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r12) 
(define-const var1254 (Array Int var3593) (cast-from-__Array__Int__var3306__-to-__Array__Int__var3593__ var801)) ; Statement: $r14 = (java.nio.ByteBuffer[]) $r13 
(assert true)
(define-const var508 Int (size/1247686229 var979)) ; Statement: $l3 = virtualinvoke r0.<org.apache.lucene.store.ByteBuffersDataOutput: long size()>() 
(define-const var2176 var3036 (var3036_newInstance/-2109164230 var270 var1254 var508 var425 var3816!1)) ; Statement: $r15 = staticinvoke <org.apache.lucene.store.ByteBufferIndexInput: org.apache.lucene.store.ByteBufferIndexInput newInstance(java.lang.String,java.nio.ByteBuffer[],long,int,org.apache.lucene.store.ByteBufferGuard)>($r16, $r14, $l3, i4, $r10) 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {toBufferList/990497982=([org.apache.lucene.store.ByteBuffersDataOutput], java.util.ArrayList), var3593_allocate/-517473021=([int], java.nio.ByteBuffer), order/1698056697=([java.nio.ByteBuffer, java.nio.ByteOrder], java.nio.ByteBuffer), var2902_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var2210-to-var2902=([java.util.ArrayList], java.util.List), cast-from-var3593-to-var3306=([java.nio.ByteBuffer], java.lang.Object), var1209_determineBlockPage/-1731856665=([java.util.List], int), arr-var3306-init=([], java.lang.Object[]), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var3306=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var1853-init=([], org.apache.lucene.store.ByteBufferGuard), var3568_bootstrap$/1685784820=([], org.apache.lucene.store.ByteBufferGuard$BufferCleaner), <init>/230545608=([org.apache.lucene.store.ByteBufferGuard, java.lang.String, org.apache.lucene.store.ByteBufferGuard$BufferCleaner], void), var2902_size/-959786421=([java.util.List], int), arr-var3593-init=([], java.nio.ByteBuffer[]), var2902_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__var3593__-to-__Array__Int__var3306__=([java.nio.ByteBuffer[]], java.lang.Object[]), cast-from-__Array__Int__var3306__-to-__Array__Int__var3593__=([java.lang.Object[]], java.nio.ByteBuffer[]), size/1247686229=([org.apache.lucene.store.ByteBuffersDataOutput], long), var3036_newInstance/-2109164230=([java.lang.String, java.nio.ByteBuffer[], long, int, org.apache.lucene.store.ByteBufferGuard], org.apache.lucene.store.ByteBufferIndexInput)}
; {var734=r9, var641=null_type, var2679=org.apache.lucene.store.ByteBuffersDataOutput, var979=r0, var2210=java.util.ArrayList, var1072=r1, var3593=java.nio.ByteBuffer, var2118=$r3, var767=java.nio.ByteOrder, var2183=$r2, var1962=$r4, var2902=java.util.List, var3306=java.lang.Object, var1209=org.apache.lucene.store.ByteBuffersDataInput, var3106=i0, var425=i4, var2838=java.util.Locale, var1131=$r7, var363=$r5, var1306=org.apache.lucene.store.ByteBuffersDirectory, var2100=$r6, var3603=$r8, var270=$r16, var1853=org.apache.lucene.store.ByteBufferGuard, var3816=$r10, var561=org.apache.lucene.store.ByteBufferGuard$BufferCleaner, var3568=org.apache.lucene.store.ByteBuffersDirectory$lambda_static_2__395, var3855=$r11, var2796="none", var784=$i2, var2056=$r12, var801=$r13, var1254=$r14, var508=$l3, var3036=org.apache.lucene.store.ByteBufferIndexInput, var2176=$r15}
; {r9=var734, null_type=var641, org.apache.lucene.store.ByteBuffersDataOutput=var2679, r0=var979, java.util.ArrayList=var2210, r1=var1072, java.nio.ByteBuffer=var3593, $r3=var2118, java.nio.ByteOrder=var767, $r2=var2183, $r4=var1962, java.util.List=var2902, java.lang.Object=var3306, org.apache.lucene.store.ByteBuffersDataInput=var1209, i0=var3106, i4=var425, java.util.Locale=var2838, $r7=var1131, $r5=var363, org.apache.lucene.store.ByteBuffersDirectory=var1306, $r6=var2100, $r8=var3603, $r16=var270, org.apache.lucene.store.ByteBufferGuard=var1853, $r10=var3816, org.apache.lucene.store.ByteBufferGuard$BufferCleaner=var561, org.apache.lucene.store.ByteBuffersDirectory$lambda_static_2__395=var3568, $r11=var3855, "none"=var2796, $i2=var784, $r12=var2056, $r13=var801, $r14=var1254, $l3=var508, org.apache.lucene.store.ByteBufferIndexInput=var3036, $r15=var2176}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r9 := @parameter0: java.lang.String;	r0 := @parameter1: org.apache.lucene.store.ByteBuffersDataOutput;	r1 = virtualinvoke r0.<org.apache.lucene.store.ByteBuffersDataOutput: java.util.ArrayList toBufferList()>();	$r3 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer allocate(int)>(0);	$r2 = <java.nio.ByteOrder: java.nio.ByteOrder LITTLE_ENDIAN>;	$r4 = virtualinvoke $r3.<java.nio.ByteBuffer: java.nio.ByteBuffer order(java.nio.ByteOrder)>($r2);	interfaceinvoke r1.<java.util.List: boolean add(java.lang.Object)>($r4);	i0 = staticinvoke <org.apache.lucene.store.ByteBuffersDataInput: int determineBlockPage(java.util.List)>(r1);	if i0 != 0 goto $i1 = staticinvoke <org.apache.lucene.util.BitUtil: int nextHighestPowerOfTwo(int)>(i0);	i4 = 30;	goto [?= $r7 = <java.util.Locale: java.util.Locale ROOT>];	$r7 = <java.util.Locale: java.util.Locale ROOT>;	$r5 = newarray (java.lang.Object)[2];	$r6 = class "Lorg/apache/lucene/store/ByteBuffersDirectory;";	$r8 = virtualinvoke $r6.<java.lang.Class: java.lang.String getSimpleName()>();	$r5[0] = $r8;	$r5[1] = r9;	$r16 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r7, "%s (file=%s)", $r5);	$r10 = new org.apache.lucene.store.ByteBufferGuard;	$r11 = staticinvoke <org.apache.lucene.store.ByteBuffersDirectory$lambda_static_2__395: org.apache.lucene.store.ByteBufferGuard$BufferCleaner bootstrap$()>();	specialinvoke $r10.<org.apache.lucene.store.ByteBufferGuard: void <init>(java.lang.String,org.apache.lucene.store.ByteBufferGuard$BufferCleaner)>("none", $r11);	$i2 = interfaceinvoke r1.<java.util.List: int size()>();	$r12 = newarray (java.nio.ByteBuffer)[$i2];	$r13 = interfaceinvoke r1.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r12);	$r14 = (java.nio.ByteBuffer[]) $r13;	$l3 = virtualinvoke r0.<org.apache.lucene.store.ByteBuffersDataOutput: long size()>();	$r15 = staticinvoke <org.apache.lucene.store.ByteBufferIndexInput: org.apache.lucene.store.ByteBufferIndexInput newInstance(java.lang.String,java.nio.ByteBuffer[],long,int,org.apache.lucene.store.ByteBufferGuard)>($r16, $r14, $l3, i4, $r10);	return $r15
;block_num 3