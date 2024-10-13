(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3853 0)
(declare-sort var1712 0)
(declare-sort var2856 0)
(declare-sort var2054 0)
(declare-sort var3981 0)
(declare-sort var3466 0)
(declare-sort var2288 0)
(declare-sort var1812 0)
(declare-sort var470 0)
(declare-sort var1661 0)
(declare-sort var2360 0)
(declare-sort var1633 0)
(declare-sort var3777 0)
(declare-sort var462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1633!class ClassObject)
(declare-fun <init>/-550664645 (var2054 var2856) void)
(declare-fun cast-from-var3853-to-var2054 (var3853) var2054)
(declare-fun var3981-init () var3981)
(declare-fun <init>/451842749 (var3981) void)
(declare-fun cast-from-var3981-to-var3466 (var3981) var3466)
(declare-fun querySpaces/438216684 (var3853) var3466)
(declare-fun var1712_getSQL/-934913789 (var1712) String)
(declare-fun sql/438216684 (var3853) String)
(declare-fun var1712_getQuerySpaces/-1713161337 (var1712) var3466)
(declare-fun var3466_addAll/-907809033 (var3466 var2288) Bool)
(declare-fun cast-from-var3466-to-var2288 (var3466) var2288)
(declare-fun var1712_getParameterValueBinders/-2088869879 (var1712) var1812)
(declare-fun paramValueBinders/438216684 (var3853) var1812)
(declare-fun var470-init () var470)
(declare-fun <init>/-325640736 (var470) void)
(declare-fun var1712_getCustomQueryReturns/-1705602652 (var1712) var1812)
(declare-fun var1812_iterator/-912451715 (var1812) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1661)
(declare-fun cast-from-var1661-to-var2360 (var1661) var2360)
(declare-fun isInstance/451912363 (ClassObject var1661) Bool)
(declare-fun cast-from-var2360-to-var1661 (var2360) var1661)
(declare-fun var3777-init () var3777)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1661) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3777 String) void)
(declare-fun cast-from-var3777-to-var462 (var3777) var462)
(declare-const null-var3853 var3853)
(declare-const null-var1712 var1712)
(declare-const null-var2856 var2856)
(declare-const var2738 var3853) ; Statement: r0 := @this: org.hibernate.loader.custom.CustomLoader 
(assert (not (= var2738 null-var3853)))
(declare-const var1547 var1712) ; Statement: r3 := @parameter0: org.hibernate.loader.custom.CustomQuery 
(assert (not (= var1547 null-var1712)))
(declare-const var181 var2856) ; Statement: r1 := @parameter1: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var181 null-var2856)))
(assert true)
;(assert (<init>/-550664645 (cast-from-var3853-to-var2054 var2738) var181)) ; Statement: specialinvoke r0.<org.hibernate.loader.Loader: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor)>(r1) 

(declare-const var2738!1 var3853)
(declare-const var181!1 var2856)
(define-const var460 var3981 var3981-init) ; Statement: $r169 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var460)) ; Statement: specialinvoke $r169.<java.util.HashSet: void <init>()>() 

(declare-const var460!1 var3981)
(declare-const var2738!2 var3853)
(assert (not (= var2738!2 null-var3853)))
(assert (= (querySpaces/438216684 var2738!2) (cast-from-var3981-to-var3466 var460!1))) ; Statement: r0.<org.hibernate.loader.custom.CustomLoader: java.util.Set querySpaces> = $r169 
(define-const var3764 String (var1712_getSQL/-934913789 var1547)) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.loader.custom.CustomQuery: java.lang.String getSQL()>() 
(declare-const var2738!3 var3853)
(assert (not (= var2738!3 null-var3853)))
(assert (= (sql/438216684 var2738!3) var3764)) ; Statement: r0.<org.hibernate.loader.custom.CustomLoader: java.lang.String sql> = $r4 
(define-const var1716 var3466 (querySpaces/438216684 var2738!3)) ; Statement: $r5 = r0.<org.hibernate.loader.custom.CustomLoader: java.util.Set querySpaces> 
(define-const var210 var3466 (var1712_getQuerySpaces/-1713161337 var1547)) ; Statement: $r6 = interfaceinvoke r3.<org.hibernate.loader.custom.CustomQuery: java.util.Set getQuerySpaces()>() 
;(assert (var3466_addAll/-907809033 var1716 (cast-from-var3466-to-var2288 var210))) ; Statement: interfaceinvoke $r5.<java.util.Set: boolean addAll(java.util.Collection)>($r6) 

(declare-const var1716!1 var3466)
(declare-const var210!1 var3466)
(define-const var1227 var1812 (var1712_getParameterValueBinders/-2088869879 var1547)) ; Statement: $r7 = interfaceinvoke r3.<org.hibernate.loader.custom.CustomQuery: java.util.List getParameterValueBinders()>() 
(declare-const var2738!4 var3853)
(assert (not (= var2738!4 null-var3853)))
(assert (= (paramValueBinders/438216684 var2738!4) var1227)) ; Statement: r0.<org.hibernate.loader.custom.CustomLoader: java.util.List paramValueBinders> = $r7 
(define-const var1485 var470 var470-init) ; Statement: $r170 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1485)) ; Statement: specialinvoke $r170.<java.util.ArrayList: void <init>()>() 

(declare-const var1485!1 var470)
(define-const var3480 var470 var470-init) ; Statement: $r171 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3480)) ; Statement: specialinvoke $r171.<java.util.ArrayList: void <init>()>() 

(declare-const var3480!1 var470)
(define-const var595 var470 var470-init) ; Statement: $r172 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var595)) ; Statement: specialinvoke $r172.<java.util.ArrayList: void <init>()>() 

(declare-const var595!1 var470)
(define-const var1014 var470 var470-init) ; Statement: $r173 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1014)) ; Statement: specialinvoke $r173.<java.util.ArrayList: void <init>()>() 

(declare-const var1014!1 var470)
(define-const var2482 var470 var470-init) ; Statement: $r174 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2482)) ; Statement: specialinvoke $r174.<java.util.ArrayList: void <init>()>() 

(declare-const var2482!1 var470)
(define-const var285 var470 var470-init) ; Statement: $r175 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var285)) ; Statement: specialinvoke $r175.<java.util.ArrayList: void <init>()>() 

(declare-const var285!1 var470)
(define-const var70 var470 var470-init) ; Statement: $r176 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var70)) ; Statement: specialinvoke $r176.<java.util.ArrayList: void <init>()>() 

(declare-const var70!1 var470)
(define-const var1389 var470 var470-init) ; Statement: $r177 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1389)) ; Statement: specialinvoke $r177.<java.util.ArrayList: void <init>()>() 

(declare-const var1389!1 var470)
(define-const var2793 var470 var470-init) ; Statement: $r178 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2793)) ; Statement: specialinvoke $r178.<java.util.ArrayList: void <init>()>() 

(declare-const var2793!1 var470)
(define-const var2102 var470 var470-init) ; Statement: $r179 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2102)) ; Statement: specialinvoke $r179.<java.util.ArrayList: void <init>()>() 

(declare-const var2102!1 var470)
(define-const var2547 var470 var470-init) ; Statement: $r180 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2547)) ; Statement: specialinvoke $r180.<java.util.ArrayList: void <init>()>() 

(declare-const var2547!1 var470)
(define-const var380 Int 0) ; Statement: i15 = 0 
(define-const var1108 Bool (ite (= 1 0) true false)) ; Statement: z9 = 0 
(define-const var3015 var470 var470-init) ; Statement: $r181 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3015)) ; Statement: specialinvoke $r181.<java.util.ArrayList: void <init>()>() 

(declare-const var3015!1 var470)
(define-const var2019 var1812 (var1712_getCustomQueryReturns/-1705602652 var1547)) ; Statement: $r20 = interfaceinvoke r3.<org.hibernate.loader.custom.CustomQuery: java.util.List getCustomQueryReturns()>() 
(define-const var1077 Iterator (var1812_iterator/-912451715 var2019)) ; Statement: r144 = interfaceinvoke $r20.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var611 Bool (Iterator_hasNext/-1669924200 var1077)) ; Statement: $z0 = interfaceinvoke r144.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $i0 = interfaceinvoke $r170.<java.util.List: int size()>() 
(assert (not (= (ite var611 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3746 var1661 (Iterator_next/-1124697587 var1077)) ; Statement: $r50 = interfaceinvoke r144.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1077!1 Iterator)
(define-const var2364 var2360 (cast-from-var1661-to-var2360 var3746)) ; Statement: r51 = (org.hibernate.loader.custom.Return) $r50 
(define-const var3218 Bool true) ; Statement: $z1 = r51 instanceof org.hibernate.loader.custom.ScalarReturn 
 ; Statement: if $z1 == 0 goto $r52 = class "Lorg/hibernate/loader/custom/ConstructorReturn;" 
(assert (= (ite var3218 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3067 ClassObject var1633!class) ; Statement: $r52 = class "Lorg/hibernate/loader/custom/ConstructorReturn;" 
(assert true)
(define-const var1984 Bool (isInstance/451912363 var3067 (cast-from-var2360-to-var1661 var2364))) ; Statement: $z2 = virtualinvoke $r52.<java.lang.Class: boolean isInstance(java.lang.Object)>(r51) 
 ; Statement: if $z2 == 0 goto $z3 = r51 instanceof org.hibernate.loader.custom.RootReturn 
(assert (= (ite var1984 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1691 Bool true) ; Statement: $z3 = r51 instanceof org.hibernate.loader.custom.RootReturn 
 ; Statement: if $z3 == 0 goto $z4 = r51 instanceof org.hibernate.loader.custom.CollectionReturn 
(assert (= (ite var1691 1 0) 0)) ; Cond: $z3 == 0 
(define-const var264 Bool true) ; Statement: $z4 = r51 instanceof org.hibernate.loader.custom.CollectionReturn 
 ; Statement: if $z4 == 0 goto $z5 = r51 instanceof org.hibernate.loader.custom.EntityFetchReturn 
(assert (= (ite var264 1 0) 0)) ; Cond: $z4 == 0 
(define-const var3670 Bool true) ; Statement: $z5 = r51 instanceof org.hibernate.loader.custom.EntityFetchReturn 
 ; Statement: if $z5 == 0 goto $z6 = r51 instanceof org.hibernate.loader.custom.CollectionFetchReturn 
(assert (= (ite var3670 1 0) 0)) ; Cond: $z5 == 0 
(define-const var2269 Bool true) ; Statement: $z6 = r51 instanceof org.hibernate.loader.custom.CollectionFetchReturn 
 ; Statement: if $z6 == 0 goto $r190 = new org.hibernate.HibernateException 
(assert (= (ite var2269 1 0) 0)) ; Cond: $z6 == 0 
(define-const var3041 var3777 var3777-init) ; Statement: $r190 = new org.hibernate.HibernateException 
(define-const var1978 String String-init) ; Statement: $r189 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1978)) ; Statement: specialinvoke $r189.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1978!1 String)
(assert (= var1978!1 ""))
(assert true)
(define-const var56 String (append/672562846 var1978!1 "unexpected custom query return type : ")) ; Statement: $r57 = virtualinvoke $r189.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected custom query return type : ") 
(declare-const var1978!2 String)
(assert (= var1978!2 (str.++ var1978!1 "unexpected custom query return type : ")))
(assert true)
(define-const var1348 ClassObject (getClass/1258963082 (cast-from-var2360-to-var1661 var2364))) ; Statement: $r55 = virtualinvoke r51.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2040 String (getName/-1958580599 var1348)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var201 String (append/672562846 var56 var2040)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var56!1 String)
(assert (= var56!1 (str.++ var56 var2040)))
(assert true)
(define-const var1309 String (toString/-2075883882 var201)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3041 var1309)) ; Statement: specialinvoke $r190.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r59) 

(declare-const var3041!1 var3777)
(declare-const var1309!1 String)
(define-const var3503 var462 (cast-from-var3777-to-var462 var3041!1)) ; Statement: $r192 = (java.lang.Throwable) $r190 
 ; Statement: throw $r192 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-550664645=([org.hibernate.loader.Loader, org.hibernate.engine.spi.SessionFactoryImplementor], void), cast-from-var3853-to-var2054=([org.hibernate.loader.custom.CustomLoader], org.hibernate.loader.Loader), var3981-init=([], java.util.HashSet), <init>/451842749=([java.util.HashSet], void), cast-from-var3981-to-var3466=([java.util.HashSet], java.util.Set), querySpaces/438216684=([org.hibernate.loader.custom.CustomLoader], java.util.Set), var1712_getSQL/-934913789=([org.hibernate.loader.custom.CustomQuery], java.lang.String), sql/438216684=([org.hibernate.loader.custom.CustomLoader], java.lang.String), var1712_getQuerySpaces/-1713161337=([org.hibernate.loader.custom.CustomQuery], java.util.Set), var3466_addAll/-907809033=([java.util.Set, java.util.Collection], boolean), cast-from-var3466-to-var2288=([java.util.Set], java.util.Collection), var1712_getParameterValueBinders/-2088869879=([org.hibernate.loader.custom.CustomQuery], java.util.List), paramValueBinders/438216684=([org.hibernate.loader.custom.CustomLoader], java.util.List), var470-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), var1712_getCustomQueryReturns/-1705602652=([org.hibernate.loader.custom.CustomQuery], java.util.List), var1812_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1661-to-var2360=([java.lang.Object], org.hibernate.loader.custom.Return), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var2360-to-var1661=([org.hibernate.loader.custom.Return], java.lang.Object), var3777-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3777-to-var462=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3853=org.hibernate.loader.custom.CustomLoader, var2738=r0, var1712=org.hibernate.loader.custom.CustomQuery, var1547=r3, var2856=org.hibernate.engine.spi.SessionFactoryImplementor, var181=r1, var2054=org.hibernate.loader.Loader, var3981=java.util.HashSet, var460=$r169, var3466=java.util.Set, var3764=$r4, var1716=$r5, var210=$r6, var2288=java.util.Collection, var1812=java.util.List, var1227=$r7, var470=java.util.ArrayList, var1485=$r170, var3480=$r171, var595=$r172, var1014=$r173, var2482=$r174, var285=$r175, var70=$r176, var1389=$r177, var2793=$r178, var2102=$r179, var2547=$r180, var380=i15, var1108=z9, var3015=$r181, var2019=$r20, var1077=r144, var611=$z0, var1661=java.lang.Object, var3746=$r50, var2360=org.hibernate.loader.custom.Return, var2364=r51, var3218=$z1, var1633=org.hibernate.loader.custom.ConstructorReturn, var3067=$r52, var1984=$z2, var1691=$z3, var264=$z4, var3670=$z5, var2269=$z6, var3777=org.hibernate.HibernateException, var3041=$r190, var1978=$r189, var56=$r57, var1348=$r55, var2040=$r56, var201=$r58, var1309=$r59, var462=java.lang.Throwable, var3503=$r192}
; {org.hibernate.loader.custom.CustomLoader=var3853, r0=var2738, org.hibernate.loader.custom.CustomQuery=var1712, r3=var1547, org.hibernate.engine.spi.SessionFactoryImplementor=var2856, r1=var181, org.hibernate.loader.Loader=var2054, java.util.HashSet=var3981, $r169=var460, java.util.Set=var3466, $r4=var3764, $r5=var1716, $r6=var210, java.util.Collection=var2288, java.util.List=var1812, $r7=var1227, java.util.ArrayList=var470, $r170=var1485, $r171=var3480, $r172=var595, $r173=var1014, $r174=var2482, $r175=var285, $r176=var70, $r177=var1389, $r178=var2793, $r179=var2102, $r180=var2547, i15=var380, z9=var1108, $r181=var3015, $r20=var2019, r144=var1077, $z0=var611, java.lang.Object=var1661, $r50=var3746, org.hibernate.loader.custom.Return=var2360, r51=var2364, $z1=var3218, org.hibernate.loader.custom.ConstructorReturn=var1633, $r52=var3067, $z2=var1984, $z3=var1691, $z4=var264, $z5=var3670, $z6=var2269, org.hibernate.HibernateException=var3777, $r190=var3041, $r189=var1978, $r57=var56, $r55=var1348, $r56=var2040, $r58=var201, $r59=var1309, java.lang.Throwable=var462, $r192=var3503}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.custom.CustomLoader;	r3 := @parameter0: org.hibernate.loader.custom.CustomQuery;	r1 := @parameter1: org.hibernate.engine.spi.SessionFactoryImplementor;	specialinvoke r0.<org.hibernate.loader.Loader: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor)>(r1);	$r169 = new java.util.HashSet;	specialinvoke $r169.<java.util.HashSet: void <init>()>();	r0.<org.hibernate.loader.custom.CustomLoader: java.util.Set querySpaces> = $r169;	$r4 = interfaceinvoke r3.<org.hibernate.loader.custom.CustomQuery: java.lang.String getSQL()>();	r0.<org.hibernate.loader.custom.CustomLoader: java.lang.String sql> = $r4;	$r5 = r0.<org.hibernate.loader.custom.CustomLoader: java.util.Set querySpaces>;	$r6 = interfaceinvoke r3.<org.hibernate.loader.custom.CustomQuery: java.util.Set getQuerySpaces()>();	interfaceinvoke $r5.<java.util.Set: boolean addAll(java.util.Collection)>($r6);	$r7 = interfaceinvoke r3.<org.hibernate.loader.custom.CustomQuery: java.util.List getParameterValueBinders()>();	r0.<org.hibernate.loader.custom.CustomLoader: java.util.List paramValueBinders> = $r7;	$r170 = new java.util.ArrayList;	specialinvoke $r170.<java.util.ArrayList: void <init>()>();	$r171 = new java.util.ArrayList;	specialinvoke $r171.<java.util.ArrayList: void <init>()>();	$r172 = new java.util.ArrayList;	specialinvoke $r172.<java.util.ArrayList: void <init>()>();	$r173 = new java.util.ArrayList;	specialinvoke $r173.<java.util.ArrayList: void <init>()>();	$r174 = new java.util.ArrayList;	specialinvoke $r174.<java.util.ArrayList: void <init>()>();	$r175 = new java.util.ArrayList;	specialinvoke $r175.<java.util.ArrayList: void <init>()>();	$r176 = new java.util.ArrayList;	specialinvoke $r176.<java.util.ArrayList: void <init>()>();	$r177 = new java.util.ArrayList;	specialinvoke $r177.<java.util.ArrayList: void <init>()>();	$r178 = new java.util.ArrayList;	specialinvoke $r178.<java.util.ArrayList: void <init>()>();	$r179 = new java.util.ArrayList;	specialinvoke $r179.<java.util.ArrayList: void <init>()>();	$r180 = new java.util.ArrayList;	specialinvoke $r180.<java.util.ArrayList: void <init>()>();	i15 = 0;	z9 = 0;	$r181 = new java.util.ArrayList;	specialinvoke $r181.<java.util.ArrayList: void <init>()>();	$r20 = interfaceinvoke r3.<org.hibernate.loader.custom.CustomQuery: java.util.List getCustomQueryReturns()>();	r144 = interfaceinvoke $r20.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r144.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $i0 = interfaceinvoke $r170.<java.util.List: int size()>();	$r50 = interfaceinvoke r144.<java.util.Iterator: java.lang.Object next()>();	r51 = (org.hibernate.loader.custom.Return) $r50;	$z1 = r51 instanceof org.hibernate.loader.custom.ScalarReturn;	if $z1 == 0 goto $r52 = class "Lorg/hibernate/loader/custom/ConstructorReturn;";	$r52 = class "Lorg/hibernate/loader/custom/ConstructorReturn;";	$z2 = virtualinvoke $r52.<java.lang.Class: boolean isInstance(java.lang.Object)>(r51);	if $z2 == 0 goto $z3 = r51 instanceof org.hibernate.loader.custom.RootReturn;	$z3 = r51 instanceof org.hibernate.loader.custom.RootReturn;	if $z3 == 0 goto $z4 = r51 instanceof org.hibernate.loader.custom.CollectionReturn;	$z4 = r51 instanceof org.hibernate.loader.custom.CollectionReturn;	if $z4 == 0 goto $z5 = r51 instanceof org.hibernate.loader.custom.EntityFetchReturn;	$z5 = r51 instanceof org.hibernate.loader.custom.EntityFetchReturn;	if $z5 == 0 goto $z6 = r51 instanceof org.hibernate.loader.custom.CollectionFetchReturn;	$z6 = r51 instanceof org.hibernate.loader.custom.CollectionFetchReturn;	if $z6 == 0 goto $r190 = new org.hibernate.HibernateException;	$r190 = new org.hibernate.HibernateException;	$r189 = new java.lang.StringBuilder;	specialinvoke $r189.<java.lang.StringBuilder: void <init>()>();	$r57 = virtualinvoke $r189.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected custom query return type : ");	$r55 = virtualinvoke r51.<java.lang.Object: java.lang.Class getClass()>();	$r56 = virtualinvoke $r55.<java.lang.Class: java.lang.String getName()>();	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r190.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r59);	$r192 = (java.lang.Throwable) $r190;	throw $r192
;block_num 9