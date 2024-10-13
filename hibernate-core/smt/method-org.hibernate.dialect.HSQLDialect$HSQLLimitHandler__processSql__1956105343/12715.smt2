(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1383 0)
(declare-sort var2126 0)
(declare-sort var165 0)
(declare-sort var1247 0)
(declare-sort var66 0)
(declare-sort var1126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1247_hasFirstRow/-2097898482 (var165) Bool)
(declare-fun this$0/-1386105081 (var1383) var66)
(declare-fun var66_access$000/-1432053604 (var66) Int)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toLowerCase/1946809429 (String var1126) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun insert/1196171004 (String Int String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1383 var1383)
(declare-const null-String String)
(declare-const null-var165 var165)
(declare-const var1126-ROOT var1126)
(declare-const var3670 var1383) ; Statement: r1 := @this: org.hibernate.dialect.HSQLDialect$HSQLLimitHandler 
(assert (not (= var3670 null-var1383)))
(declare-const var1390 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1390 null-String)))
(declare-const var1012 var165) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var1012 null-var165)))
(define-const var3353 Bool (var1247_hasFirstRow/-2097898482 var1012)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(define-const var1316 var66 (this$0/-1386105081 var3670)) ; Statement: $r2 = r1.<org.hibernate.dialect.HSQLDialect$HSQLLimitHandler: org.hibernate.dialect.HSQLDialect this$0> 
(define-const var1855 Int (var66_access$000/-1432053604 var1316)) ; Statement: $i0 = staticinvoke <org.hibernate.dialect.HSQLDialect: int access$000(org.hibernate.dialect.HSQLDialect)>($r2) 
 ; Statement: if $i0 >= 200 goto $r3 = new java.lang.StringBuilder 
(assert (not (>= var1855 200))) ; Negate: Cond: $i0 >= 200  
(define-const var1501 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var2964 Int (length/-134980193 var1390)) ; Statement: $i1 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var1558 Int (+ var2964 10)) ; Statement: $i2 = $i1 + 10 
(assert true)
;(assert (<init>/543593434 var1501 var1558)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var1501!1 String)
(declare-const var1558!1 Int)
(assert true)
(define-const var1513 String (append/672562846 var1501!1 var1390)) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1501!2 String)
(assert (= var1501!2 (str.++ var1501!1 var1390)))
(define-const var1613 var1126 var1126-ROOT) ; Statement: $r9 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3106 String (toLowerCase/1946809429 var1390 var1613)) ; Statement: $r10 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r9) 
(assert true)
(define-const var2058 Int (indexOf/-1209756239 var3106 "select")) ; Statement: $i3 = virtualinvoke $r10.<java.lang.String: int indexOf(java.lang.String)>("select") 
(define-const var734 Int (+ var2058 6)) ; Statement: $i4 = $i3 + 6 
 ; Statement: if z0 == 0 goto $r14 = " top ?" 
(assert (not (= (ite var3353 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3715 String " limit ? ?") ; Statement: $r14 = " limit ? ?" 
 ; Statement: goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r14)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2117 String (insert/1196171004 var1513 var734 var3715)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r14) 
(assert true)
(define-const var2169 String (toString/-2075883882 var2117)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1247_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), this$0/-1386105081=([org.hibernate.dialect.HSQLDialect$HSQLLimitHandler], org.hibernate.dialect.HSQLDialect), var66_access$000/-1432053604=([org.hibernate.dialect.HSQLDialect], int), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1383=org.hibernate.dialect.HSQLDialect$HSQLLimitHandler, var3670=r1, var1390=r4, var2126=null_type, var165=org.hibernate.engine.spi.RowSelection, var1012=r0, var1247=org.hibernate.dialect.pagination.LimitHelper, var3353=z0, var66=org.hibernate.dialect.HSQLDialect, var1316=$r2, var1855=$i0, var1501=$r8, var2964=$i1, var1558=$i2, var1513=$r11, var1126=java.util.Locale, var1613=$r9, var3106=$r10, var2058=$i3, var734=$i4, var3715=$r14, var2117=$r12, var2169=$r13}
; {org.hibernate.dialect.HSQLDialect$HSQLLimitHandler=var1383, r1=var3670, r4=var1390, null_type=var2126, org.hibernate.engine.spi.RowSelection=var165, r0=var1012, org.hibernate.dialect.pagination.LimitHelper=var1247, z0=var3353, org.hibernate.dialect.HSQLDialect=var66, $r2=var1316, $i0=var1855, $r8=var1501, $i1=var2964, $i2=var1558, $r11=var1513, java.util.Locale=var1126, $r9=var1613, $r10=var3106, $i3=var2058, $i4=var734, $r14=var3715, $r12=var2117, $r13=var2169}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.HSQLDialect$HSQLLimitHandler;	r4 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	$r2 = r1.<org.hibernate.dialect.HSQLDialect$HSQLLimitHandler: org.hibernate.dialect.HSQLDialect this$0>;	$i0 = staticinvoke <org.hibernate.dialect.HSQLDialect: int access$000(org.hibernate.dialect.HSQLDialect)>($r2);	if $i0 >= 200 goto $r3 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	$i1 = virtualinvoke r4.<java.lang.String: int length()>();	$i2 = $i1 + 10;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i2);	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r9 = <java.util.Locale: java.util.Locale ROOT>;	$r10 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r9);	$i3 = virtualinvoke $r10.<java.lang.String: int indexOf(java.lang.String)>("select");	$i4 = $i3 + 6;	if z0 == 0 goto $r14 = " top ?";	$r14 = " limit ? ?";	goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r14)];	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r14);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 4