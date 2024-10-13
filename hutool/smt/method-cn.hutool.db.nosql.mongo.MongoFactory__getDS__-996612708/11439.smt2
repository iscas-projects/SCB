(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var883 0)
(declare-sort var2552 0)
(declare-sort var40 0)
(declare-sort var3934 0)
(declare-sort var3648 0)
(declare-sort var3153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getSettingPath/1133410105 (var883) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2552_join/481797010 ((Array Int var40) String) String)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var40__ ((Array Int String)) (Array Int var40))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3934_get/1088891777 (var3934 var40) var40)
(declare-fun cast-from-String-to-var40 (String) var40)
(declare-fun cast-from-var40-to-var3153 (var40) var3153)
(declare-const null-var883 var883)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3648-DS_MAP var3934)
(declare-const null-var3153 var3153)
(declare-const var1080 var883) ; Statement: r1 := @parameter0: cn.hutool.setting.Setting 
(assert (not (= var1080 null-var883)))
(declare-const var2225 (Array Int String)) ; Statement: r4 := @parameter1: java.lang.String[] 
(assert (not (= var2225 null-__Array__Int__String__)))
(define-const var1870 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1870)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1870!1 String)
(assert (= var1870!1 ""))
(assert true)
(define-const var1038 String (getSettingPath/1133410105 var1080)) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.setting.Setting: java.lang.String getSettingPath()>() 
(assert true)
(define-const var2588 String (append/672562846 var1870!1 var1038)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1870!2 String)
(assert (= var1870!2 (str.++ var1870!1 var1038)))
(assert true)
(define-const var2400 String (append/672562846 var2588 ",")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var2588!1 String)
(assert (= var2588!1 (str.++ var2588 ",")))
(define-const var763 String (var2552_join/481797010 (cast-from-__Array__Int__String__-to-__Array__Int__var40__ var2225) (cast-from-String-to-String ","))) ; Statement: $r5 = staticinvoke <cn.hutool.core.util.ArrayUtil: java.lang.String join(java.lang.Object[],java.lang.CharSequence)>(r4, ",") 
(assert true)
(define-const var3724 String (append/672562846 var2400 var763)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2400!1 String)
(assert (= var2400!1 (str.++ var2400 var763)))
(assert true)
(define-const var935 String (toString/-2075883882 var3724)) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3087 var3934 var3648-DS_MAP) ; Statement: $r9 = <cn.hutool.db.nosql.mongo.MongoFactory: java.util.Map DS_MAP> 
(define-const var1845 var40 (var3934_get/1088891777 var3087 (cast-from-String-to-var40 var935))) ; Statement: $r10 = interfaceinvoke $r9.<java.util.Map: java.lang.Object get(java.lang.Object)>(r8) 
(define-const var3249 var3153 (cast-from-var40-to-var3153 var1845)) ; Statement: r13 = (cn.hutool.db.nosql.mongo.MongoDS) $r10 
 ; Statement: if null != r13 goto return r13 
(assert (not (= null-var3153 var3249))) ; Cond: null != r13 
 ; Statement: return r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getSettingPath/1133410105=([cn.hutool.setting.Setting], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2552_join/481797010=([java.lang.Object[], java.lang.CharSequence], java.lang.String), cast-from-__Array__Int__String__-to-__Array__Int__var40__=([java.lang.String[]], java.lang.Object[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3934_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var40=([java.lang.String], java.lang.Object), cast-from-var40-to-var3153=([java.lang.Object], cn.hutool.db.nosql.mongo.MongoDS)}
; {var883=cn.hutool.setting.Setting, var1080=r1, var2225=r4, var1870=$r0, var1038=$r2, var2588=$r3, var2400=$r6, var2552=cn.hutool.core.util.ArrayUtil, var40=java.lang.Object, var763=$r5, var3724=$r7, var935=r8, var3934=java.util.Map, var3648=cn.hutool.db.nosql.mongo.MongoFactory, var3087=$r9, var1845=$r10, var3153=cn.hutool.db.nosql.mongo.MongoDS, var3249=r13}
; {cn.hutool.setting.Setting=var883, r1=var1080, r4=var2225, $r0=var1870, $r2=var1038, $r3=var2588, $r6=var2400, cn.hutool.core.util.ArrayUtil=var2552, java.lang.Object=var40, $r5=var763, $r7=var3724, r8=var935, java.util.Map=var3934, cn.hutool.db.nosql.mongo.MongoFactory=var3648, $r9=var3087, $r10=var1845, cn.hutool.db.nosql.mongo.MongoDS=var3153, r13=var3249}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: cn.hutool.setting.Setting;	r4 := @parameter1: java.lang.String[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<cn.hutool.setting.Setting: java.lang.String getSettingPath()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r5 = staticinvoke <cn.hutool.core.util.ArrayUtil: java.lang.String join(java.lang.Object[],java.lang.CharSequence)>(r4, ",");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = <cn.hutool.db.nosql.mongo.MongoFactory: java.util.Map DS_MAP>;	$r10 = interfaceinvoke $r9.<java.util.Map: java.lang.Object get(java.lang.Object)>(r8);	r13 = (cn.hutool.db.nosql.mongo.MongoDS) $r10;	if null != r13 goto return r13;	return r13
;block_num 2