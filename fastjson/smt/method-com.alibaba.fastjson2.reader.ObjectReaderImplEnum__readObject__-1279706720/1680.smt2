(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var650 0)
(declare-sort var428 0)
(declare-sort var339 0)
(declare-sort var503 0)
(declare-sort var3612 0)
(declare-sort var1829 0)
(declare-sort var472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getOffset/-1691971951 (var428) Int)
(declare-fun createMethodParamType/1678935919 (var650) ClassObject)
(declare-fun read/-815546395 (var428 ClassObject) var339)
(declare-fun createMethod/1678935919 (var650) var503)
(declare-fun arr-var339-init () (Array Int var339))
(declare-fun var1829-init () var1829)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun enumClass/1678935919 (var650) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun append/-1031950772 (String var339) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var428 String) String)
(declare-fun <init>/-743866570 (var1829 String var472) void)
(declare-fun cast-from-var3612-to-var472 (var3612) var472)
(declare-const null-var650 var650)
(declare-const null-var428 var428)
(declare-const null-ClassObject ClassObject)
(declare-const null-var339 var339)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var339__ (Array Int var339))
(declare-const null-var3612 var3612)
(declare-const var2427 var650) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplEnum 
(assert (not (= var2427 null-var650)))
(declare-const var2907 var428) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2907 null-var428)))
(declare-const var3796 ClassObject) ; Statement: r3 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3796 null-ClassObject)))
(declare-const var1808 var339) ; Statement: r76 := @parameter2: java.lang.Object 
(assert (not (= var1808 null-var339)))
(declare-const var2586 Int) ; Statement: l17 := @parameter3: long 
(assert (not (= var2586 null-Int)))
(assert true)
(define-const var2843 Int (getOffset/-1691971951 var2907)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int getOffset()>() 
(define-const var3279 ClassObject (createMethodParamType/1678935919 var2427)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.reflect.Type createMethodParamType> 
 ; Statement: if $r2 == null goto r78 = null 
(assert (not (= var3279 null-ClassObject))) ; Negate: Cond: $r2 == null  
(define-const var806 ClassObject (createMethodParamType/1678935919 var2427)) ; Statement: $r60 = r1.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.reflect.Type createMethodParamType> 
(assert true)
(define-const var1563 var339 (read/-815546395 var2907 var806)) ; Statement: r77 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object read(java.lang.reflect.Type)>($r60) 
(define-const var2481 var503 (createMethod/1678935919 var2427)) ; Statement: $r62 = r1.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.reflect.Method createMethod> 
(define-const var2613 (Array Int var339) arr-var339-init) ; Statement: $r61 = newarray (java.lang.Object)[1] 
(declare-const var2613!1 (Array Int var339))
(assert (not (= var2613!1 null-__Array__Int__var339__)))
(assert (= (select var2613!1 0) var1563)) ; Statement: $r61[0] = r77 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3556 var3612) ; Statement: $r65 := @caughtexception 
(assert (not (= var3556 null-var3612)))
(define-const var37 var1829 var1829-init) ; Statement: $r66 = new com.alibaba.fastjson2.JSONException 
(define-const var3773 String String-init) ; Statement: $r67 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3773)) ; Statement: specialinvoke $r67.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3773!1 String)
(assert (= var3773!1 ""))
(assert true)
(define-const var2457 String (append/672562846 var3773!1 "create enum error, enumClass ")) ; Statement: $r70 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create enum error, enumClass ") 
(declare-const var3773!2 String)
(assert (= var3773!2 (str.++ var3773!1 "create enum error, enumClass ")))
(define-const var1128 ClassObject (enumClass/1678935919 var2427)) ; Statement: $r68 = r1.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.Class enumClass> 
(assert true)
(define-const var293 String (getName/-1958580599 var1128)) ; Statement: $r69 = virtualinvoke $r68.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3969 String (append/672562846 var2457 var293)) ; Statement: $r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69) 
(declare-const var2457!1 String)
(assert (= var2457!1 (str.++ var2457 var293)))
(assert true)
(define-const var1477 String (append/672562846 var3969 ", paramValue ")) ; Statement: $r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", paramValue ") 
(declare-const var3969!1 String)
(assert (= var3969!1 (str.++ var3969 ", paramValue ")))
(assert true)
(define-const var807 String (append/-1031950772 var1477 var1563)) ; Statement: $r73 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r77) 
(declare-const var1477!1 String)
(assert (str.prefixof var1477 var1477!1))
(assert true)
(define-const var2443 String (toString/-2075883882 var807)) ; Statement: $r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3481 String (info/-1659839707 var2907 var2443)) ; Statement: $r75 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r74) 
(assert true)
;(assert (<init>/-743866570 var37 var3481 (cast-from-var3612-to-var472 var3556))) ; Statement: specialinvoke $r66.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r75, $r65) 

(declare-const var37!1 var1829)
(declare-const var3481!1 String)
(declare-const var3556!1 var3612)
 ; Statement: throw $r66 
(check-sat)
(get-model)
(get-unsat-core)
; {getOffset/-1691971951=([com.alibaba.fastjson2.JSONReader], int), createMethodParamType/1678935919=([com.alibaba.fastjson2.reader.ObjectReaderImplEnum], java.lang.reflect.Type), read/-815546395=([com.alibaba.fastjson2.JSONReader, java.lang.reflect.Type], java.lang.Object), createMethod/1678935919=([com.alibaba.fastjson2.reader.ObjectReaderImplEnum], java.lang.reflect.Method), arr-var339-init=([], java.lang.Object[]), var1829-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), enumClass/1678935919=([com.alibaba.fastjson2.reader.ObjectReaderImplEnum], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3612-to-var472=([java.lang.ReflectiveOperationException], java.lang.Throwable)}
; {var650=com.alibaba.fastjson2.reader.ObjectReaderImplEnum, var2427=r1, var428=com.alibaba.fastjson2.JSONReader, var2907=r0, var3796=r3, var339=java.lang.Object, var1808=r76, var2586=l17, var2843=i0, var3279=$r2, var806=$r60, var1563=r77, var503=java.lang.reflect.Method, var2481=$r62, var2613=$r61, var3612=java.lang.ReflectiveOperationException, var3556=$r65, var1829=com.alibaba.fastjson2.JSONException, var37=$r66, var3773=$r67, var2457=$r70, var1128=$r68, var293=$r69, var3969=$r71, var1477=$r72, var807=$r73, var2443=$r74, var3481=$r75, var472=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.ObjectReaderImplEnum=var650, r1=var2427, com.alibaba.fastjson2.JSONReader=var428, r0=var2907, r3=var3796, java.lang.Object=var339, r76=var1808, l17=var2586, i0=var2843, $r2=var3279, $r60=var806, r77=var1563, java.lang.reflect.Method=var503, $r62=var2481, $r61=var2613, java.lang.ReflectiveOperationException=var3612, $r65=var3556, com.alibaba.fastjson2.JSONException=var1829, $r66=var37, $r67=var3773, $r70=var2457, $r68=var1128, $r69=var293, $r71=var3969, $r72=var1477, $r73=var807, $r74=var2443, $r75=var3481, java.lang.Throwable=var472}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplEnum;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.reflect.Type;	r76 := @parameter2: java.lang.Object;	l17 := @parameter3: long;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int getOffset()>();	$r2 = r1.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.reflect.Type createMethodParamType>;	if $r2 == null goto r78 = null;	$r60 = r1.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.reflect.Type createMethodParamType>;	r77 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object read(java.lang.reflect.Type)>($r60);	$r62 = r1.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.reflect.Method createMethod>;	$r61 = newarray (java.lang.Object)[1];	$r61[0] = r77;	$r65 := @caughtexception;	$r66 = new com.alibaba.fastjson2.JSONException;	$r67 = new java.lang.StringBuilder;	specialinvoke $r67.<java.lang.StringBuilder: void <init>()>();	$r70 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create enum error, enumClass ");	$r68 = r1.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.Class enumClass>;	$r69 = virtualinvoke $r68.<java.lang.Class: java.lang.String getName()>();	$r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69);	$r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", paramValue ");	$r73 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r77);	$r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.String toString()>();	$r75 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r74);	specialinvoke $r66.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r75, $r65);	throw $r66
;block_num 3