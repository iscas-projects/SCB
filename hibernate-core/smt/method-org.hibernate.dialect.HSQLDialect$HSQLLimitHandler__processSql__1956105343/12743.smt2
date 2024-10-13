(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var404 0)
(declare-sort var2908 0)
(declare-sort var3851 0)
(declare-sort var1563 0)
(declare-sort var1894 0)
(declare-sort var2699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1563_hasFirstRow/-2097898482 (var3851) Bool)
(declare-fun this$0/-1386105081 (var404) var1894)
(declare-fun var1894_access$000/-1432053604 (var1894) Int)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toLowerCase/1946809429 (String var2699) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun insert/1196171004 (String Int String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var404 var404)
(declare-const null-String String)
(declare-const null-var3851 var3851)
(declare-const var2699-ROOT var2699)
(declare-const var1597 var404) ; Statement: r1 := @this: org.hibernate.dialect.HSQLDialect$HSQLLimitHandler 
(assert (not (= var1597 null-var404)))
(declare-const var2819 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2819 null-String)))
(declare-const var632 var3851) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var632 null-var3851)))
(define-const var672 Bool (var1563_hasFirstRow/-2097898482 var632)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(define-const var3618 var1894 (this$0/-1386105081 var1597)) ; Statement: $r2 = r1.<org.hibernate.dialect.HSQLDialect$HSQLLimitHandler: org.hibernate.dialect.HSQLDialect this$0> 
(define-const var3115 Int (var1894_access$000/-1432053604 var3618)) ; Statement: $i0 = staticinvoke <org.hibernate.dialect.HSQLDialect: int access$000(org.hibernate.dialect.HSQLDialect)>($r2) 
 ; Statement: if $i0 >= 200 goto $r3 = new java.lang.StringBuilder 
(assert (not (>= var3115 200))) ; Negate: Cond: $i0 >= 200  
(define-const var2370 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var1466 Int (length/-134980193 var2819)) ; Statement: $i1 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var610 Int (+ var1466 10)) ; Statement: $i2 = $i1 + 10 
(assert true)
;(assert (<init>/543593434 var2370 var610)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var2370!1 String)
(declare-const var610!1 Int)
(assert true)
(define-const var2999 String (append/672562846 var2370!1 var2819)) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2370!2 String)
(assert (= var2370!2 (str.++ var2370!1 var2819)))
(define-const var1746 var2699 var2699-ROOT) ; Statement: $r9 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2899 String (toLowerCase/1946809429 var2819 var1746)) ; Statement: $r10 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r9) 
(assert true)
(define-const var3603 Int (indexOf/-1209756239 var2899 "select")) ; Statement: $i3 = virtualinvoke $r10.<java.lang.String: int indexOf(java.lang.String)>("select") 
(define-const var2468 Int (+ var3603 6)) ; Statement: $i4 = $i3 + 6 
 ; Statement: if z0 == 0 goto $r14 = " top ?" 
(assert (= (ite var672 1 0) 0)) ; Cond: z0 == 0 
(define-const var1246 String " top ?") ; Statement: $r14 = " top ?" 
(assert true) ; Non Conditional
(assert true)
(define-const var2794 String (insert/1196171004 var2999 var2468 var1246)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r14) 
(assert true)
(define-const var587 String (toString/-2075883882 var2794)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1563_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), this$0/-1386105081=([org.hibernate.dialect.HSQLDialect$HSQLLimitHandler], org.hibernate.dialect.HSQLDialect), var1894_access$000/-1432053604=([org.hibernate.dialect.HSQLDialect], int), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var404=org.hibernate.dialect.HSQLDialect$HSQLLimitHandler, var1597=r1, var2819=r4, var2908=null_type, var3851=org.hibernate.engine.spi.RowSelection, var632=r0, var1563=org.hibernate.dialect.pagination.LimitHelper, var672=z0, var1894=org.hibernate.dialect.HSQLDialect, var3618=$r2, var3115=$i0, var2370=$r8, var1466=$i1, var610=$i2, var2999=$r11, var2699=java.util.Locale, var1746=$r9, var2899=$r10, var3603=$i3, var2468=$i4, var1246=$r14, var2794=$r12, var587=$r13}
; {org.hibernate.dialect.HSQLDialect$HSQLLimitHandler=var404, r1=var1597, r4=var2819, null_type=var2908, org.hibernate.engine.spi.RowSelection=var3851, r0=var632, org.hibernate.dialect.pagination.LimitHelper=var1563, z0=var672, org.hibernate.dialect.HSQLDialect=var1894, $r2=var3618, $i0=var3115, $r8=var2370, $i1=var1466, $i2=var610, $r11=var2999, java.util.Locale=var2699, $r9=var1746, $r10=var2899, $i3=var3603, $i4=var2468, $r14=var1246, $r12=var2794, $r13=var587}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.HSQLDialect$HSQLLimitHandler;	r4 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	$r2 = r1.<org.hibernate.dialect.HSQLDialect$HSQLLimitHandler: org.hibernate.dialect.HSQLDialect this$0>;	$i0 = staticinvoke <org.hibernate.dialect.HSQLDialect: int access$000(org.hibernate.dialect.HSQLDialect)>($r2);	if $i0 >= 200 goto $r3 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	$i1 = virtualinvoke r4.<java.lang.String: int length()>();	$i2 = $i1 + 10;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i2);	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r9 = <java.util.Locale: java.util.Locale ROOT>;	$r10 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r9);	$i3 = virtualinvoke $r10.<java.lang.String: int indexOf(java.lang.String)>("select");	$i4 = $i3 + 6;	if z0 == 0 goto $r14 = " top ?";	$r14 = " top ?";	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r14);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 4