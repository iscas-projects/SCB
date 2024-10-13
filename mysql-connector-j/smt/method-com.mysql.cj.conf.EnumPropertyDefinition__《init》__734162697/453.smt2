(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3652 0)
(declare-sort var2867 0)
(declare-sort var253 0)
(declare-sort var2478 0)
(declare-sort var2520 0)
(declare-sort var1503 0)
(declare-sort var131 0)
(declare-sort var1946 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1494046730 (var2520 var2867 var1503 Bool String String String Int) void)
(declare-fun cast-from-var3652-to-var2520 (var3652) var2520)
(declare-fun cast-from-var253-to-var1503 (var253) var1503)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getKeyName/-200443258 (var2867) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1946_createException/-1002763108 (String) var131)
(declare-const null-var3652 var3652)
(declare-const null-var2867 var2867)
(declare-const null-var253 var253)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var258 var3652) ; Statement: r0 := @this: com.mysql.cj.conf.EnumPropertyDefinition 
(assert (not (= var258 null-var3652)))
(declare-const var607 var2867) ; Statement: r1 := @parameter0: com.mysql.cj.conf.PropertyKey 
(assert (not (= var607 null-var2867)))
(declare-const var882 var253) ; Statement: r2 := @parameter1: java.lang.Enum 
(assert (not (= var882 null-var253)))
(declare-const var511 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var511 null-Bool)))
(declare-const var814 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var814 null-String)))
(declare-const var310 String) ; Statement: r4 := @parameter4: java.lang.String 
(assert (not (= var310 null-String)))
(declare-const var2311 String) ; Statement: r5 := @parameter5: java.lang.String 
(assert (not (= var2311 null-String)))
(declare-const var465 Int) ; Statement: i0 := @parameter6: int 
(assert (not (= var465 null-Int)))
(assert true)
;(assert (<init>/1494046730 (cast-from-var3652-to-var2520 var258) var607 (cast-from-var253-to-var1503 var882) var511 var814 var310 var2311 var465)) ; Statement: specialinvoke r0.<com.mysql.cj.conf.AbstractPropertyDefinition: void <init>(com.mysql.cj.conf.PropertyKey,java.lang.Object,boolean,java.lang.String,java.lang.String,java.lang.String,int)>(r1, r2, z0, r3, r4, r5, i0) 

(declare-const var258!1 var3652)
(declare-const var607!1 var2867)
(declare-const var882!1 var253)
(declare-const var511!1 Bool)
(declare-const var814!1 String)
(declare-const var310!1 String)
(declare-const var2311!1 String)
(declare-const var465!1 Int)
 ; Statement: if r2 != null goto $r6 = virtualinvoke r2.<java.lang.Enum: java.lang.Class getDeclaringClass()>() 
(assert (not (not (= var882!1 null-var253)))) ; Negate: Cond: r2 != null  
(define-const var300 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var300)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var300!1 String)
(assert (= var300!1 ""))
(assert true)
(define-const var260 String (append/672562846 var300!1 "Enum property \u0027")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Enum property \'") 
(declare-const var300!2 String)
(assert (= var300!2 (str.++ var300!1 "Enum property \u0027")))
(assert true)
(define-const var711 String (getKeyName/-200443258 var607!1)) ; Statement: $r8 = virtualinvoke r1.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>() 
(assert true)
(define-const var2763 String (append/672562846 var260 var711)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var260!1 String)
(assert (= var260!1 (str.++ var260 var711)))
(assert true)
(define-const var3700 String (append/672562846 var2763 "\u0027 cannot be initialized with null.")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' cannot be initialized with null.") 
(declare-const var2763!1 String)
(assert (= var2763!1 (str.++ var2763 "\u0027 cannot be initialized with null.")))
(assert true)
(define-const var3525 String (toString/-2075883882 var3700)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3058 var131 (var1946_createException/-1002763108 var3525)) ; Statement: $r13 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String)>($r12) 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1494046730=([com.mysql.cj.conf.AbstractPropertyDefinition, com.mysql.cj.conf.PropertyKey, java.lang.Object, boolean, java.lang.String, java.lang.String, java.lang.String, int], void), cast-from-var3652-to-var2520=([com.mysql.cj.conf.EnumPropertyDefinition], com.mysql.cj.conf.AbstractPropertyDefinition), cast-from-var253-to-var1503=([java.lang.Enum], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getKeyName/-200443258=([com.mysql.cj.conf.PropertyKey], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1946_createException/-1002763108=([java.lang.String], com.mysql.cj.exceptions.CJException)}
; {var3652=com.mysql.cj.conf.EnumPropertyDefinition, var258=r0, var2867=com.mysql.cj.conf.PropertyKey, var607=r1, var253=java.lang.Enum, var882=r2, var511=z0, var814=r3, var2478=null_type, var310=r4, var2311=r5, var465=i0, var2520=com.mysql.cj.conf.AbstractPropertyDefinition, var1503=java.lang.Object, var300=$r7, var260=$r9, var711=$r8, var2763=$r10, var3700=$r11, var3525=$r12, var131=com.mysql.cj.exceptions.CJException, var1946=com.mysql.cj.exceptions.ExceptionFactory, var3058=$r13}
; {com.mysql.cj.conf.EnumPropertyDefinition=var3652, r0=var258, com.mysql.cj.conf.PropertyKey=var2867, r1=var607, java.lang.Enum=var253, r2=var882, z0=var511, r3=var814, null_type=var2478, r4=var310, r5=var2311, i0=var465, com.mysql.cj.conf.AbstractPropertyDefinition=var2520, java.lang.Object=var1503, $r7=var300, $r9=var260, $r8=var711, $r10=var2763, $r11=var3700, $r12=var3525, com.mysql.cj.exceptions.CJException=var131, com.mysql.cj.exceptions.ExceptionFactory=var1946, $r13=var3058}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.conf.EnumPropertyDefinition;	r1 := @parameter0: com.mysql.cj.conf.PropertyKey;	r2 := @parameter1: java.lang.Enum;	z0 := @parameter2: boolean;	r3 := @parameter3: java.lang.String;	r4 := @parameter4: java.lang.String;	r5 := @parameter5: java.lang.String;	i0 := @parameter6: int;	specialinvoke r0.<com.mysql.cj.conf.AbstractPropertyDefinition: void <init>(com.mysql.cj.conf.PropertyKey,java.lang.Object,boolean,java.lang.String,java.lang.String,java.lang.String,int)>(r1, r2, z0, r3, r4, r5, i0);	if r2 != null goto $r6 = virtualinvoke r2.<java.lang.Enum: java.lang.Class getDeclaringClass()>();	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Enum property \'");	$r8 = virtualinvoke r1.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' cannot be initialized with null.");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String)>($r12);	throw $r13
;block_num 2