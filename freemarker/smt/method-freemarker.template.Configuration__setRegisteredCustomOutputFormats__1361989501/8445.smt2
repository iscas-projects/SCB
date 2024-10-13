(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var739 0)
(declare-sort var3922 0)
(declare-sort var2013 0)
(declare-sort var3762 0)
(declare-sort var2511 0)
(declare-sort var554 0)
(declare-sort var203 0)
(declare-sort var3616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2013_check/1854950253 (var3762) void)
(declare-fun cast-from-var3922-to-var3762 (var3922) var3762)
(declare-fun var2511-init () var2511)
(declare-fun var3922_size/-390258357 (var3922) Int)
(declare-fun <init>/112933067 (var2511 Int Float32) void)
(declare-fun var3922_iterator/-1617794947 (var3922) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3762)
(declare-fun cast-from-var3762-to-var554 (var3762) var554)
(declare-fun getName/-959053322 (var554) String)
(declare-fun getName/843802988 (var203) String)
(declare-fun var3616-init () var3616)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3616 String) void)
(declare-const null-var739 var739)
(declare-const null-var3922 var3922)
(declare-const var203-INSTANCE var203)
(declare-const var3107 var739) ; Statement: r3 := @this: freemarker.template.Configuration 
(assert (not (= var3107 null-var739)))
(declare-const var3480 var3922) ; Statement: r0 := @parameter0: java.util.Collection 
(assert (not (= var3480 null-var3922)))
;(assert (var2013_check/1854950253 (cast-from-var3922-to-var3762 var3480))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.Object)>(r0) 

(declare-const var3480!1 var3922)
(define-const var579 var2511 var2511-init) ; Statement: $r61 = new java.util.LinkedHashMap 
(define-const var2709 Int (var3922_size/-390258357 var3480!1)) ; Statement: $i0 = interfaceinvoke r0.<java.util.Collection: int size()>() 
(define-const var1520 Int (* var2709 4)) ; Statement: $i1 = $i0 * 4 
(define-const var2957 Int (div var1520 3)) ; Statement: $i2 = $i1 / 3 
(assert true)
;(assert (<init>/112933067 var579 var2957 ((_ to_fp 8 24) #x3f800000))) ; Statement: specialinvoke $r61.<java.util.LinkedHashMap: void <init>(int,float)>($i2, 1.0F) 

(declare-const var579!1 var2511)
(declare-const var2957!1 Int)
(declare-const var1148 Float32)
(define-const var3613 Iterator (var3922_iterator/-1617794947 var3480!1)) ; Statement: r2 = interfaceinvoke r0.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var4 Bool (Iterator_hasNext/-1669924200 var3613)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = staticinvoke <java.util.Collections: java.util.Map unmodifiableMap(java.util.Map)>($r61) 
(assert (not (= (ite var4 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3436 var3762 (Iterator_next/-1124697587 var3613)) ; Statement: $r5 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3613!1 Iterator)
(define-const var158 var554 (cast-from-var3762-to-var554 var3436)) ; Statement: r6 = (freemarker.core.OutputFormat) $r5 
(assert true)
(define-const var1873 String (getName/-959053322 var158)) ; Statement: r7 = virtualinvoke r6.<freemarker.core.OutputFormat: java.lang.String getName()>() 
(define-const var960 var203 var203-INSTANCE) ; Statement: $r8 = <freemarker.core.UndefinedOutputFormat: freemarker.core.UndefinedOutputFormat INSTANCE> 
(assert true)
(define-const var2422 String (getName/843802988 var960)) ; Statement: $r9 = virtualinvoke $r8.<freemarker.core.UndefinedOutputFormat: java.lang.String getName()>() 
(assert true)
(define-const var2223 Bool (= var1873 var2422)) ; Statement: $z1 = virtualinvoke r7.<java.lang.String: boolean equals(java.lang.Object)>($r9) 
 ; Statement: if $z1 == 0 goto $r10 = <freemarker.core.PlainTextOutputFormat: freemarker.core.PlainTextOutputFormat INSTANCE> 
(assert (not (= (ite var2223 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2979 var3616 var3616-init) ; Statement: $r63 = new java.lang.IllegalArgumentException 
(define-const var330 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var330)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var330!1 String)
(assert (= var330!1 ""))
(assert true)
(define-const var3020 String (append/672562846 var330!1 "The \u0022")) ; Statement: $r57 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"") 
(declare-const var330!2 String)
(assert (= var330!2 (str.++ var330!1 "The \u0022")))
(assert true)
(define-const var763 String (append/672562846 var3020 var1873)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var3020!1 String)
(assert (= var3020!1 (str.++ var3020 var1873)))
(assert true)
(define-const var2328 String (append/672562846 var763 "\u0022 output format can\u0027t be redefined")) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" output format can\'t be redefined") 
(declare-const var763!1 String)
(assert (= var763!1 (str.++ var763 "\u0022 output format can\u0027t be redefined")))
(assert true)
(define-const var77 String (toString/-2075883882 var2328)) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2979 var77)) ; Statement: specialinvoke $r63.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r60) 

(declare-const var2979!1 var3616)
(declare-const var77!1 String)
 ; Statement: throw $r63 
(check-sat)
(get-model)
(get-unsat-core)
; {var2013_check/1854950253=([java.lang.Object], void), cast-from-var3922-to-var3762=([java.util.Collection], java.lang.Object), var2511-init=([], java.util.LinkedHashMap), var3922_size/-390258357=([java.util.Collection], int), <init>/112933067=([java.util.LinkedHashMap, int, float], void), var3922_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3762-to-var554=([java.lang.Object], freemarker.core.OutputFormat), getName/-959053322=([freemarker.core.OutputFormat], java.lang.String), getName/843802988=([freemarker.core.UndefinedOutputFormat], java.lang.String), var3616-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var739=freemarker.template.Configuration, var3107=r3, var3922=java.util.Collection, var3480=r0, var2013=freemarker.template.utility.NullArgumentException, var3762=java.lang.Object, var2511=java.util.LinkedHashMap, var579=$r61, var2709=$i0, var1520=$i1, var2957=$i2, var1148=1.0F, var3613=r2, var4=$z0, var3436=$r5, var554=freemarker.core.OutputFormat, var158=r6, var1873=r7, var203=freemarker.core.UndefinedOutputFormat, var960=$r8, var2422=$r9, var2223=$z1, var3616=java.lang.IllegalArgumentException, var2979=$r63, var330=$r62, var3020=$r57, var763=$r58, var2328=$r59, var77=$r60}
; {freemarker.template.Configuration=var739, r3=var3107, java.util.Collection=var3922, r0=var3480, freemarker.template.utility.NullArgumentException=var2013, java.lang.Object=var3762, java.util.LinkedHashMap=var2511, $r61=var579, $i0=var2709, $i1=var1520, $i2=var2957, 1.0F=var1148, r2=var3613, $z0=var4, $r5=var3436, freemarker.core.OutputFormat=var554, r6=var158, r7=var1873, freemarker.core.UndefinedOutputFormat=var203, $r8=var960, $r9=var2422, $z1=var2223, java.lang.IllegalArgumentException=var3616, $r63=var2979, $r62=var330, $r57=var3020, $r58=var763, $r59=var2328, $r60=var77}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: freemarker.template.Configuration;	r0 := @parameter0: java.util.Collection;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.Object)>(r0);	$r61 = new java.util.LinkedHashMap;	$i0 = interfaceinvoke r0.<java.util.Collection: int size()>();	$i1 = $i0 * 4;	$i2 = $i1 / 3;	specialinvoke $r61.<java.util.LinkedHashMap: void <init>(int,float)>($i2, 1.0F);	r2 = interfaceinvoke r0.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = staticinvoke <java.util.Collections: java.util.Map unmodifiableMap(java.util.Map)>($r61);	$r5 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r6 = (freemarker.core.OutputFormat) $r5;	r7 = virtualinvoke r6.<freemarker.core.OutputFormat: java.lang.String getName()>();	$r8 = <freemarker.core.UndefinedOutputFormat: freemarker.core.UndefinedOutputFormat INSTANCE>;	$r9 = virtualinvoke $r8.<freemarker.core.UndefinedOutputFormat: java.lang.String getName()>();	$z1 = virtualinvoke r7.<java.lang.String: boolean equals(java.lang.Object)>($r9);	if $z1 == 0 goto $r10 = <freemarker.core.PlainTextOutputFormat: freemarker.core.PlainTextOutputFormat INSTANCE>;	$r63 = new java.lang.IllegalArgumentException;	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r57 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" output format can\'t be redefined");	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r63.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r60);	throw $r63
;block_num 4