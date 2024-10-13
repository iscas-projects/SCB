(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2140 0)
(declare-sort var2095 0)
(declare-sort var2044 0)
(declare-sort var3946 0)
(declare-sort var3666 0)
(declare-sort var158 0)
(declare-sort var1392 0)
(declare-sort var1858 0)
(declare-sort var2428 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2044_check/1854950253 (var3946) void)
(declare-fun cast-from-var2095-to-var3946 (var2095) var3946)
(declare-fun var3666-init () var3666)
(declare-fun var2095_size/-390258357 (var2095) Int)
(declare-fun <init>/112933067 (var3666 Int Float32) void)
(declare-fun var2095_iterator/-1617794947 (var2095) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3946)
(declare-fun cast-from-var3946-to-var158 (var3946) var158)
(declare-fun getName/-959053322 (var158) String)
(declare-fun getName/843802988 (var1392) String)
(declare-fun getName/1608251525 (var1858) String)
(declare-fun var2428-init () var2428)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2428 String) void)
(declare-const null-var2140 var2140)
(declare-const null-var2095 var2095)
(declare-const var1392-INSTANCE var1392)
(declare-const var1858-INSTANCE var1858)
(declare-const var970 var2140) ; Statement: r3 := @this: freemarker.template.Configuration 
(assert (not (= var970 null-var2140)))
(declare-const var3598 var2095) ; Statement: r0 := @parameter0: java.util.Collection 
(assert (not (= var3598 null-var2095)))
;(assert (var2044_check/1854950253 (cast-from-var2095-to-var3946 var3598))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.Object)>(r0) 

(declare-const var3598!1 var2095)
(define-const var1921 var3666 var3666-init) ; Statement: $r61 = new java.util.LinkedHashMap 
(define-const var3351 Int (var2095_size/-390258357 var3598!1)) ; Statement: $i0 = interfaceinvoke r0.<java.util.Collection: int size()>() 
(define-const var1201 Int (* var3351 4)) ; Statement: $i1 = $i0 * 4 
(define-const var3457 Int (div var1201 3)) ; Statement: $i2 = $i1 / 3 
(assert true)
;(assert (<init>/112933067 var1921 var3457 ((_ to_fp 8 24) #x3f800000))) ; Statement: specialinvoke $r61.<java.util.LinkedHashMap: void <init>(int,float)>($i2, 1.0F) 

(declare-const var1921!1 var3666)
(declare-const var3457!1 Int)
(declare-const var2711 Float32)
(define-const var2053 Iterator (var2095_iterator/-1617794947 var3598!1)) ; Statement: r2 = interfaceinvoke r0.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3967 Bool (Iterator_hasNext/-1669924200 var2053)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = staticinvoke <java.util.Collections: java.util.Map unmodifiableMap(java.util.Map)>($r61) 
(assert (not (= (ite var3967 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2552 var3946 (Iterator_next/-1124697587 var2053)) ; Statement: $r5 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2053!1 Iterator)
(define-const var3089 var158 (cast-from-var3946-to-var158 var2552)) ; Statement: r6 = (freemarker.core.OutputFormat) $r5 
(assert true)
(define-const var3239 String (getName/-959053322 var3089)) ; Statement: r7 = virtualinvoke r6.<freemarker.core.OutputFormat: java.lang.String getName()>() 
(define-const var1338 var1392 var1392-INSTANCE) ; Statement: $r8 = <freemarker.core.UndefinedOutputFormat: freemarker.core.UndefinedOutputFormat INSTANCE> 
(assert true)
(define-const var154 String (getName/843802988 var1338)) ; Statement: $r9 = virtualinvoke $r8.<freemarker.core.UndefinedOutputFormat: java.lang.String getName()>() 
(assert true)
(define-const var111 Bool (= var3239 var154)) ; Statement: $z1 = virtualinvoke r7.<java.lang.String: boolean equals(java.lang.Object)>($r9) 
 ; Statement: if $z1 == 0 goto $r10 = <freemarker.core.PlainTextOutputFormat: freemarker.core.PlainTextOutputFormat INSTANCE> 
(assert (= (ite var111 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3282 var1858 var1858-INSTANCE) ; Statement: $r10 = <freemarker.core.PlainTextOutputFormat: freemarker.core.PlainTextOutputFormat INSTANCE> 
(assert true)
(define-const var3840 String (getName/1608251525 var3282)) ; Statement: $r11 = virtualinvoke $r10.<freemarker.core.PlainTextOutputFormat: java.lang.String getName()>() 
(assert true)
(define-const var1215 Bool (= var3239 var3840)) ; Statement: $z2 = virtualinvoke r7.<java.lang.String: boolean equals(java.lang.Object)>($r11) 
 ; Statement: if $z2 == 0 goto $i3 = virtualinvoke r7.<java.lang.String: int length()>() 
(assert (not (= (ite var1215 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1192 var2428 var2428-init) ; Statement: $r65 = new java.lang.IllegalArgumentException 
(define-const var3624 String String-init) ; Statement: $r64 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3624)) ; Statement: specialinvoke $r64.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3624!1 String)
(assert (= var3624!1 ""))
(assert true)
(define-const var2878 String (append/672562846 var3624!1 "The \u0022")) ; Statement: $r51 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"") 
(declare-const var3624!2 String)
(assert (= var3624!2 (str.++ var3624!1 "The \u0022")))
(assert true)
(define-const var499 String (append/672562846 var2878 var3239)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var2878!1 String)
(assert (= var2878!1 (str.++ var2878 var3239)))
(assert true)
(define-const var604 String (append/672562846 var499 "\u0022 output format can\u0027t be redefined")) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" output format can\'t be redefined") 
(declare-const var499!1 String)
(assert (= var499!1 (str.++ var499 "\u0022 output format can\u0027t be redefined")))
(assert true)
(define-const var3669 String (toString/-2075883882 var604)) ; Statement: $r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1192 var3669)) ; Statement: specialinvoke $r65.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r54) 

(declare-const var1192!1 var2428)
(declare-const var3669!1 String)
 ; Statement: throw $r65 
(check-sat)
(get-model)
(get-unsat-core)
; {var2044_check/1854950253=([java.lang.Object], void), cast-from-var2095-to-var3946=([java.util.Collection], java.lang.Object), var3666-init=([], java.util.LinkedHashMap), var2095_size/-390258357=([java.util.Collection], int), <init>/112933067=([java.util.LinkedHashMap, int, float], void), var2095_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3946-to-var158=([java.lang.Object], freemarker.core.OutputFormat), getName/-959053322=([freemarker.core.OutputFormat], java.lang.String), getName/843802988=([freemarker.core.UndefinedOutputFormat], java.lang.String), getName/1608251525=([freemarker.core.PlainTextOutputFormat], java.lang.String), var2428-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2140=freemarker.template.Configuration, var970=r3, var2095=java.util.Collection, var3598=r0, var2044=freemarker.template.utility.NullArgumentException, var3946=java.lang.Object, var3666=java.util.LinkedHashMap, var1921=$r61, var3351=$i0, var1201=$i1, var3457=$i2, var2711=1.0F, var2053=r2, var3967=$z0, var2552=$r5, var158=freemarker.core.OutputFormat, var3089=r6, var3239=r7, var1392=freemarker.core.UndefinedOutputFormat, var1338=$r8, var154=$r9, var111=$z1, var1858=freemarker.core.PlainTextOutputFormat, var3282=$r10, var3840=$r11, var1215=$z2, var2428=java.lang.IllegalArgumentException, var1192=$r65, var3624=$r64, var2878=$r51, var499=$r52, var604=$r53, var3669=$r54}
; {freemarker.template.Configuration=var2140, r3=var970, java.util.Collection=var2095, r0=var3598, freemarker.template.utility.NullArgumentException=var2044, java.lang.Object=var3946, java.util.LinkedHashMap=var3666, $r61=var1921, $i0=var3351, $i1=var1201, $i2=var3457, 1.0F=var2711, r2=var2053, $z0=var3967, $r5=var2552, freemarker.core.OutputFormat=var158, r6=var3089, r7=var3239, freemarker.core.UndefinedOutputFormat=var1392, $r8=var1338, $r9=var154, $z1=var111, freemarker.core.PlainTextOutputFormat=var1858, $r10=var3282, $r11=var3840, $z2=var1215, java.lang.IllegalArgumentException=var2428, $r65=var1192, $r64=var3624, $r51=var2878, $r52=var499, $r53=var604, $r54=var3669}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: freemarker.template.Configuration;	r0 := @parameter0: java.util.Collection;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.Object)>(r0);	$r61 = new java.util.LinkedHashMap;	$i0 = interfaceinvoke r0.<java.util.Collection: int size()>();	$i1 = $i0 * 4;	$i2 = $i1 / 3;	specialinvoke $r61.<java.util.LinkedHashMap: void <init>(int,float)>($i2, 1.0F);	r2 = interfaceinvoke r0.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = staticinvoke <java.util.Collections: java.util.Map unmodifiableMap(java.util.Map)>($r61);	$r5 = interfaceinvoke r2.<java.util.Iterator: java.lang.Object next()>();	r6 = (freemarker.core.OutputFormat) $r5;	r7 = virtualinvoke r6.<freemarker.core.OutputFormat: java.lang.String getName()>();	$r8 = <freemarker.core.UndefinedOutputFormat: freemarker.core.UndefinedOutputFormat INSTANCE>;	$r9 = virtualinvoke $r8.<freemarker.core.UndefinedOutputFormat: java.lang.String getName()>();	$z1 = virtualinvoke r7.<java.lang.String: boolean equals(java.lang.Object)>($r9);	if $z1 == 0 goto $r10 = <freemarker.core.PlainTextOutputFormat: freemarker.core.PlainTextOutputFormat INSTANCE>;	$r10 = <freemarker.core.PlainTextOutputFormat: freemarker.core.PlainTextOutputFormat INSTANCE>;	$r11 = virtualinvoke $r10.<freemarker.core.PlainTextOutputFormat: java.lang.String getName()>();	$z2 = virtualinvoke r7.<java.lang.String: boolean equals(java.lang.Object)>($r11);	if $z2 == 0 goto $i3 = virtualinvoke r7.<java.lang.String: int length()>();	$r65 = new java.lang.IllegalArgumentException;	$r64 = new java.lang.StringBuilder;	specialinvoke $r64.<java.lang.StringBuilder: void <init>()>();	$r51 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"");	$r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" output format can\'t be redefined");	$r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r65.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r54);	throw $r65
;block_num 5