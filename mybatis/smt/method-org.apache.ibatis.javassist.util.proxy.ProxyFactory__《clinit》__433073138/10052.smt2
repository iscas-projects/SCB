(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3146 0)
(declare-sort var637 0)
(declare-sort var168 0)
(declare-sort var2331 0)
(declare-sort var860 0)
(declare-sort var1934 0)
(declare-sort var2614 0)
(declare-sort var3209 0)
(declare-sort var1937 0)
(declare-sort var3212 0)
(declare-sort var1267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3146!class ClassObject)
(declare-const var637!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2331-init () var2331)
(declare-fun <init>/1093678879 (var2331) void)
(declare-fun cast-from-var2331-to-var860 (var2331) var860)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var1934-init () var1934)
(declare-fun <init>/1759764630 (var1934) void)
(declare-fun cast-from-var1934-to-var2614 (var1934) var2614)
(declare-fun var3209-init () var3209)
(declare-fun <init>/-1181892969 (var3209) void)
(declare-fun cast-from-var3209-to-var1937 (var3209) var1937)
(declare-fun var3212-init () var3212)
(declare-fun <init>/171416728 (var3212) void)
(declare-fun cast-from-var3212-to-var1267 (var3212) var1267)
(declare-const var168-HANDLER_TYPE String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(define-const var2531 Bool (ite (= 1 0) true false)) ; Statement: <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean onlyPublicMethods> = 0 
(define-const var983 ClassObject var3146!class) ; Statement: <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class OBJECT_TYPE> = class "Ljava/lang/Object;" 
(define-const var724 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var724)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var724!1 String)
(assert (= var724!1 ""))
(assert true)
(define-const var1515 String (append/-1166366385 var724!1 76)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76) 
(declare-const var724!2 String)
(assert (str.prefixof var724!1 var724!2))
(define-const var2905 ClassObject var637!class) ; Statement: $r1 = class "Lorg/apache/ibatis/javassist/util/proxy/MethodHandler;" 
(assert true)
(define-const var1564 String (getName/-1958580599 var2905)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2745 String (replace/1524665721 var1564 46 47)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var1486 String (append/672562846 var1515 var2745)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1515!1 String)
(assert (= var1515!1 (str.++ var1515 var2745)))
(assert true)
(define-const var3439 String (append/-1166366385 var1486 59)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var1486!1 String)
(assert (str.prefixof var1486 var1486!1))
(assert true)
(define-const var3193 String (toString/-2075883882 var3439)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1186 String var3193) ; Statement: <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String HANDLER_TYPE> = $r7 
(define-const var1686 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1686)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1686!1 String)
(assert (= var1686!1 ""))
(assert true)
(define-const var2276 String (append/672562846 var1686!1 "(")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1686!2 String)
(assert (= var1686!2 (str.++ var1686!1 "(")))
(define-const var2549 String var168-HANDLER_TYPE) ; Statement: $r9 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String HANDLER_TYPE> 
(assert true)
(define-const var2142 String (append/672562846 var2276 var2549)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2276!1 String)
(assert (= var2276!1 (str.++ var2276 var2549)))
(assert true)
(define-const var3715 String (append/672562846 var2142 ")V")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V") 
(declare-const var2142!1 String)
(assert (= var2142!1 (str.++ var2142 ")V")))
(assert true)
(define-const var429 String (toString/-2075883882 var3715)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2795 String var429) ; Statement: <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String HANDLER_SETTER_TYPE> = $r13 
(define-const var201 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var201)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var201!1 String)
(assert (= var201!1 ""))
(assert true)
(define-const var1494 String (append/672562846 var201!1 "()")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var201!2 String)
(assert (= var201!2 (str.++ var201!1 "()")))
(define-const var2462 String var168-HANDLER_TYPE) ; Statement: $r15 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String HANDLER_TYPE> 
(assert true)
(define-const var1541 String (append/672562846 var1494 var2462)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1494!1 String)
(assert (= var1494!1 (str.++ var1494 var2462)))
(assert true)
(define-const var2459 String (toString/-2075883882 var1541)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3215 String var2459) ; Statement: <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String HANDLER_GETTER_TYPE> = $r18 
(define-const var3385 Bool (ite (= 1 1) true false)) ; Statement: <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean useCache> = 1 
(define-const var2274 Bool (ite (= 1 1) true false)) ; Statement: <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean useWriteReplace> = 1 
(define-const var723 var2331 var2331-init) ; Statement: $r19 = new java.util.WeakHashMap 
(assert true)
;(assert (<init>/1093678879 var723)) ; Statement: specialinvoke $r19.<java.util.WeakHashMap: void <init>()>() 

(declare-const var723!1 var2331)
(define-const var2253 var860 (cast-from-var2331-to-var860 var723!1)) ; Statement: <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.util.Map proxyCache> = $r19 
(define-const var3002 (Array Int Int) arr-Int-init) ; Statement: $r20 = newarray (char)[16] 
(declare-const var3002!1 (Array Int Int))
(assert (not (= var3002!1 null-__Array__Int__Int__)))
(assert (= (select var3002!1 0) 48)) ; Statement: $r20[0] = 48 
(declare-const var3002!2 (Array Int Int))
(assert (not (= var3002!2 null-__Array__Int__Int__)))
(assert (= (select var3002!2 1) 49)) ; Statement: $r20[1] = 49 
(declare-const var3002!3 (Array Int Int))
(assert (not (= var3002!3 null-__Array__Int__Int__)))
(assert (= (select var3002!3 2) 50)) ; Statement: $r20[2] = 50 
(declare-const var3002!4 (Array Int Int))
(assert (not (= var3002!4 null-__Array__Int__Int__)))
(assert (= (select var3002!4 3) 51)) ; Statement: $r20[3] = 51 
(declare-const var3002!5 (Array Int Int))
(assert (not (= var3002!5 null-__Array__Int__Int__)))
(assert (= (select var3002!5 4) 52)) ; Statement: $r20[4] = 52 
(declare-const var3002!6 (Array Int Int))
(assert (not (= var3002!6 null-__Array__Int__Int__)))
(assert (= (select var3002!6 5) 53)) ; Statement: $r20[5] = 53 
(declare-const var3002!7 (Array Int Int))
(assert (not (= var3002!7 null-__Array__Int__Int__)))
(assert (= (select var3002!7 6) 54)) ; Statement: $r20[6] = 54 
(declare-const var3002!8 (Array Int Int))
(assert (not (= var3002!8 null-__Array__Int__Int__)))
(assert (= (select var3002!8 7) 55)) ; Statement: $r20[7] = 55 
(declare-const var3002!9 (Array Int Int))
(assert (not (= var3002!9 null-__Array__Int__Int__)))
(assert (= (select var3002!9 8) 56)) ; Statement: $r20[8] = 56 
(declare-const var3002!10 (Array Int Int))
(assert (not (= var3002!10 null-__Array__Int__Int__)))
(assert (= (select var3002!10 9) 57)) ; Statement: $r20[9] = 57 
(declare-const var3002!11 (Array Int Int))
(assert (not (= var3002!11 null-__Array__Int__Int__)))
(assert (= (select var3002!11 10) 97)) ; Statement: $r20[10] = 97 
(declare-const var3002!12 (Array Int Int))
(assert (not (= var3002!12 null-__Array__Int__Int__)))
(assert (= (select var3002!12 11) 98)) ; Statement: $r20[11] = 98 
(declare-const var3002!13 (Array Int Int))
(assert (not (= var3002!13 null-__Array__Int__Int__)))
(assert (= (select var3002!13 12) 99)) ; Statement: $r20[12] = 99 
(declare-const var3002!14 (Array Int Int))
(assert (not (= var3002!14 null-__Array__Int__Int__)))
(assert (= (select var3002!14 13) 100)) ; Statement: $r20[13] = 100 
(declare-const var3002!15 (Array Int Int))
(assert (not (= var3002!15 null-__Array__Int__Int__)))
(assert (= (select var3002!15 14) 101)) ; Statement: $r20[14] = 101 
(declare-const var3002!16 (Array Int Int))
(assert (not (= var3002!16 null-__Array__Int__Int__)))
(assert (= (select var3002!16 15) 102)) ; Statement: $r20[15] = 102 
(define-const var1360 (Array Int Int) var3002!16) ; Statement: <org.apache.ibatis.javassist.util.proxy.ProxyFactory: char[] hexDigits> = $r20 
(define-const var3065 var1934 var1934-init) ; Statement: $r21 = new org.apache.ibatis.javassist.util.proxy.ProxyFactory$1 
(assert true)
;(assert (<init>/1759764630 var3065)) ; Statement: specialinvoke $r21.<org.apache.ibatis.javassist.util.proxy.ProxyFactory$1: void <init>()>() 

(declare-const var3065!1 var1934)
(define-const var3665 var2614 (cast-from-var1934-to-var2614 var3065!1)) ; Statement: <org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.util.proxy.ProxyFactory$ClassLoaderProvider classLoaderProvider> = $r21 
(define-const var3057 var3209 var3209-init) ; Statement: $r22 = new org.apache.ibatis.javassist.util.proxy.ProxyFactory$2 
(assert true)
;(assert (<init>/-1181892969 var3057)) ; Statement: specialinvoke $r22.<org.apache.ibatis.javassist.util.proxy.ProxyFactory$2: void <init>()>() 

(declare-const var3057!1 var3209)
(define-const var1877 var1937 (cast-from-var3209-to-var1937 var3057!1)) ; Statement: <org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.util.proxy.ProxyFactory$UniqueName nameGenerator> = $r22 
(define-const var1162 var3212 var3212-init) ; Statement: $r23 = new org.apache.ibatis.javassist.util.proxy.ProxyFactory$3 
(assert true)
;(assert (<init>/171416728 var1162)) ; Statement: specialinvoke $r23.<org.apache.ibatis.javassist.util.proxy.ProxyFactory$3: void <init>()>() 

(declare-const var1162!1 var3212)
(define-const var507 var1267 (cast-from-var3212-to-var1267 var1162!1)) ; Statement: <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.util.Comparator sorter> = $r23 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2331-init=([], java.util.WeakHashMap), <init>/1093678879=([java.util.WeakHashMap], void), cast-from-var2331-to-var860=([java.util.WeakHashMap], java.util.Map), arr-Int-init=([], char[]), var1934-init=([], org.apache.ibatis.javassist.util.proxy.ProxyFactory$1), <init>/1759764630=([org.apache.ibatis.javassist.util.proxy.ProxyFactory$1], void), cast-from-var1934-to-var2614=([org.apache.ibatis.javassist.util.proxy.ProxyFactory$1], org.apache.ibatis.javassist.util.proxy.ProxyFactory$ClassLoaderProvider), var3209-init=([], org.apache.ibatis.javassist.util.proxy.ProxyFactory$2), <init>/-1181892969=([org.apache.ibatis.javassist.util.proxy.ProxyFactory$2], void), cast-from-var3209-to-var1937=([org.apache.ibatis.javassist.util.proxy.ProxyFactory$2], org.apache.ibatis.javassist.util.proxy.ProxyFactory$UniqueName), var3212-init=([], org.apache.ibatis.javassist.util.proxy.ProxyFactory$3), <init>/171416728=([org.apache.ibatis.javassist.util.proxy.ProxyFactory$3], void), cast-from-var3212-to-var1267=([org.apache.ibatis.javassist.util.proxy.ProxyFactory$3], java.util.Comparator)}
; {var2531=<org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean onlyPublicMethods>, var3146=java.lang.Object, var983=<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class OBJECT_TYPE>, var724=$r0, var1515=$r4, var637=org.apache.ibatis.javassist.util.proxy.MethodHandler, var2905=$r1, var1564=$r2, var2745=$r3, var1486=$r5, var3439=$r6, var3193=$r7, var1186=<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String HANDLER_TYPE>, var1686=$r8, var2276=$r10, var168=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var2549=$r9, var2142=$r11, var3715=$r12, var429=$r13, var2795=<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String HANDLER_SETTER_TYPE>, var201=$r14, var1494=$r16, var2462=$r15, var1541=$r17, var2459=$r18, var3215=<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String HANDLER_GETTER_TYPE>, var3385=<org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean useCache>, var2274=<org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean useWriteReplace>, var2331=java.util.WeakHashMap, var723=$r19, var860=java.util.Map, var2253=<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.util.Map proxyCache>, var3002=$r20, var1360=<org.apache.ibatis.javassist.util.proxy.ProxyFactory: char[] hexDigits>, var1934=org.apache.ibatis.javassist.util.proxy.ProxyFactory$1, var3065=$r21, var2614=org.apache.ibatis.javassist.util.proxy.ProxyFactory$ClassLoaderProvider, var3665=<org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.util.proxy.ProxyFactory$ClassLoaderProvider classLoaderProvider>, var3209=org.apache.ibatis.javassist.util.proxy.ProxyFactory$2, var3057=$r22, var1937=org.apache.ibatis.javassist.util.proxy.ProxyFactory$UniqueName, var1877=<org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.util.proxy.ProxyFactory$UniqueName nameGenerator>, var3212=org.apache.ibatis.javassist.util.proxy.ProxyFactory$3, var1162=$r23, var1267=java.util.Comparator, var507=<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.util.Comparator sorter>}
; {<org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean onlyPublicMethods>=var2531, java.lang.Object=var3146, <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class OBJECT_TYPE>=var983, $r0=var724, $r4=var1515, org.apache.ibatis.javassist.util.proxy.MethodHandler=var637, $r1=var2905, $r2=var1564, $r3=var2745, $r5=var1486, $r6=var3439, $r7=var3193, <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String HANDLER_TYPE>=var1186, $r8=var1686, $r10=var2276, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var168, $r9=var2549, $r11=var2142, $r12=var3715, $r13=var429, <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String HANDLER_SETTER_TYPE>=var2795, $r14=var201, $r16=var1494, $r15=var2462, $r17=var1541, $r18=var2459, <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String HANDLER_GETTER_TYPE>=var3215, <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean useCache>=var3385, <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean useWriteReplace>=var2274, java.util.WeakHashMap=var2331, $r19=var723, java.util.Map=var860, <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.util.Map proxyCache>=var2253, $r20=var3002, <org.apache.ibatis.javassist.util.proxy.ProxyFactory: char[] hexDigits>=var1360, org.apache.ibatis.javassist.util.proxy.ProxyFactory$1=var1934, $r21=var3065, org.apache.ibatis.javassist.util.proxy.ProxyFactory$ClassLoaderProvider=var2614, <org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.util.proxy.ProxyFactory$ClassLoaderProvider classLoaderProvider>=var3665, org.apache.ibatis.javassist.util.proxy.ProxyFactory$2=var3209, $r22=var3057, org.apache.ibatis.javassist.util.proxy.ProxyFactory$UniqueName=var1937, <org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.util.proxy.ProxyFactory$UniqueName nameGenerator>=var1877, org.apache.ibatis.javassist.util.proxy.ProxyFactory$3=var3212, $r23=var1162, java.util.Comparator=var1267, <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.util.Comparator sorter>=var507}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean onlyPublicMethods> = 0;	<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class OBJECT_TYPE> = class "Ljava/lang/Object;";	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	$r1 = class "Lorg/apache/ibatis/javassist/util/proxy/MethodHandler;";	$r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String HANDLER_TYPE> = $r7;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r9 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String HANDLER_TYPE>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String HANDLER_SETTER_TYPE> = $r13;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r15 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String HANDLER_TYPE>;	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String HANDLER_GETTER_TYPE> = $r18;	<org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean useCache> = 1;	<org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean useWriteReplace> = 1;	$r19 = new java.util.WeakHashMap;	specialinvoke $r19.<java.util.WeakHashMap: void <init>()>();	<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.util.Map proxyCache> = $r19;	$r20 = newarray (char)[16];	$r20[0] = 48;	$r20[1] = 49;	$r20[2] = 50;	$r20[3] = 51;	$r20[4] = 52;	$r20[5] = 53;	$r20[6] = 54;	$r20[7] = 55;	$r20[8] = 56;	$r20[9] = 57;	$r20[10] = 97;	$r20[11] = 98;	$r20[12] = 99;	$r20[13] = 100;	$r20[14] = 101;	$r20[15] = 102;	<org.apache.ibatis.javassist.util.proxy.ProxyFactory: char[] hexDigits> = $r20;	$r21 = new org.apache.ibatis.javassist.util.proxy.ProxyFactory$1;	specialinvoke $r21.<org.apache.ibatis.javassist.util.proxy.ProxyFactory$1: void <init>()>();	<org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.util.proxy.ProxyFactory$ClassLoaderProvider classLoaderProvider> = $r21;	$r22 = new org.apache.ibatis.javassist.util.proxy.ProxyFactory$2;	specialinvoke $r22.<org.apache.ibatis.javassist.util.proxy.ProxyFactory$2: void <init>()>();	<org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.util.proxy.ProxyFactory$UniqueName nameGenerator> = $r22;	$r23 = new org.apache.ibatis.javassist.util.proxy.ProxyFactory$3;	specialinvoke $r23.<org.apache.ibatis.javassist.util.proxy.ProxyFactory$3: void <init>()>();	<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.util.Comparator sorter> = $r23;	return
;block_num 1