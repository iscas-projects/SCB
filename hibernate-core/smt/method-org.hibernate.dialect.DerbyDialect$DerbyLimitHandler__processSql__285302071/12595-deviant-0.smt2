(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1252 0)
(declare-sort var3164 0)
(declare-sort var1756 0)
(declare-sort var1012 0)
(declare-sort var488 0)
(declare-sort var1569 0)
(declare-sort var121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun toLowerCase/1946809429 (String var1012) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-fun this$0/-1977892673 (var1252) var488)
(declare-fun var488_access$100/247021877 (var488 Int) Bool)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1569_hasFirstRow/-2097898482 (var1756) Bool)
(declare-fun getMaxOrLimit/1324675775 (var121 var1756) Int)
(declare-fun cast-from-var1252-to-var121 (var1252) var121)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun var488_access$200/2019219242 (var488 String) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1252 var1252)
(declare-const null-String String)
(declare-const null-var1756 var1756)
(declare-const var1012-ROOT var1012)
(declare-const var1622 var1252) ; Statement: r5 := @this: org.hibernate.dialect.DerbyDialect$DerbyLimitHandler 
(assert (not (= var1622 null-var1252)))
(declare-const var1819 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1819 null-String)))
(declare-const var3353 var1756) ; Statement: r8 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var3353 null-var1756)))
(define-const var1921 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1605 Int (length/-134980193 var1819)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2656 Int (+ var1605 50)) ; Statement: $i1 = $i0 + 50 
(assert true)
;(assert (<init>/543593434 var1921 var2656)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1921!1 String)
(declare-const var2656!1 Int)
(define-const var1070 var1012 var1012-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3511 String (toLowerCase/1946809429 var1819 var1070)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(assert true)
(define-const var3979 String (trim/-847153721 var3511)) ; Statement: r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3130 Int (lastIndexOf/-618837785 var3979 "for update")) ; Statement: i2 = virtualinvoke r4.<java.lang.String: int lastIndexOf(java.lang.String)>("for update") 
(define-const var2364 var488 (this$0/-1977892673 var1622)) ; Statement: $r6 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0> 
(define-const var432 Bool (var488_access$100/247021877 var2364 var3130)) ; Statement: $z0 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$100(org.hibernate.dialect.DerbyDialect,int)>($r6, i2) 
 ; Statement: if $z0 == 0 goto $r7 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0> 
(assert (not (= (ite var432 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1404 Int (- var3130 1)) ; Statement: $i7 = i2 - 1 
(assert (not (and true (and (>= 0 0) (>= (str.len var1819) var1404) (>= var1404 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), this$0/-1977892673=([org.hibernate.dialect.DerbyDialect$DerbyLimitHandler], org.hibernate.dialect.DerbyDialect), var488_access$100/247021877=([org.hibernate.dialect.DerbyDialect, int], boolean), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1569_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), getMaxOrLimit/1324675775=([org.hibernate.dialect.pagination.AbstractLimitHandler, org.hibernate.engine.spi.RowSelection], int), cast-from-var1252-to-var121=([org.hibernate.dialect.DerbyDialect$DerbyLimitHandler], org.hibernate.dialect.pagination.AbstractLimitHandler), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), var488_access$200/2019219242=([org.hibernate.dialect.DerbyDialect, java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1252=org.hibernate.dialect.DerbyDialect$DerbyLimitHandler, var1622=r5, var1819=r1, var3164=null_type, var1756=org.hibernate.engine.spi.RowSelection, var3353=r8, var1921=$r0, var1605=$i0, var2656=$i1, var1012=java.util.Locale, var1070=$r2, var3511=$r3, var3979=r4, var3130=i2, var488=org.hibernate.dialect.DerbyDialect, var2364=$r6, var432=$z0, var1404=$i7, var2393=$r21, var1569=org.hibernate.dialect.pagination.LimitHelper, var3756=$z4, var121=org.hibernate.dialect.pagination.AbstractLimitHandler, var351=$i3, var278=$r9, var2731=$r10, var2047=$z2, var3114=$r11, var101=$z3, var1949=$r22}
; {org.hibernate.dialect.DerbyDialect$DerbyLimitHandler=var1252, r5=var1622, r1=var1819, null_type=var3164, org.hibernate.engine.spi.RowSelection=var1756, r8=var3353, $r0=var1921, $i0=var1605, $i1=var2656, java.util.Locale=var1012, $r2=var1070, $r3=var3511, r4=var3979, i2=var3130, org.hibernate.dialect.DerbyDialect=var488, $r6=var2364, $z0=var432, $i7=var1404, $r21=var2393, org.hibernate.dialect.pagination.LimitHelper=var1569, $z4=var3756, org.hibernate.dialect.pagination.AbstractLimitHandler=var121, $i3=var351, $r9=var278, $r10=var2731, $z2=var2047, $r11=var3114, $z3=var101, $r22=var1949}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.DerbyDialect$DerbyLimitHandler;	r1 := @parameter0: java.lang.String;	r8 := @parameter1: org.hibernate.engine.spi.RowSelection;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 50;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	i2 = virtualinvoke r4.<java.lang.String: int lastIndexOf(java.lang.String)>("for update");	$r6 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	$z0 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$100(org.hibernate.dialect.DerbyDialect,int)>($r6, i2);	if $z0 == 0 goto $r7 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	$i7 = i2 - 1;	$r21 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i7);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	goto [?= $z4 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r8)];	$z4 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r8);	if $z4 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	$i3 = virtualinvoke r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r8);	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only");	$r10 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	$z2 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$100(org.hibernate.dialect.DerbyDialect,int)>($r10, i2);	if $z2 == 0 goto $r11 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	$r11 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	$z3 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$200(org.hibernate.dialect.DerbyDialect,java.lang.String)>($r11, r4);	if $z3 == 0 goto $r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 7