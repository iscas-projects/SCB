(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3915 0)
(declare-sort var3773 0)
(declare-sort var1358 0)
(declare-sort var767 0)
(declare-sort var816 0)
(declare-sort var1419 0)
(declare-sort var2570 0)
(declare-sort var3769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun toLowerCase/1946809429 (String var767) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-fun this$0/-1977892673 (var3915) var816)
(declare-fun var816_access$100/247021877 (var816 Int) Bool)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1419_hasFirstRow/-2097898482 (var1358) Bool)
(declare-fun getFirstRow/1410679095 (var1358) Int)
(declare-fun append/-1031950772 (String var2570) String)
(declare-fun cast-from-Int-to-var2570 (Int) var2570)
(declare-fun getMaxOrLimit/1324675775 (var3769 var1358) Int)
(declare-fun cast-from-var3915-to-var3769 (var3915) var3769)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun var816_access$200/2019219242 (var816 String) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3915 var3915)
(declare-const null-String String)
(declare-const null-var1358 var1358)
(declare-const var767-ROOT var767)
(declare-const var83 var3915) ; Statement: r5 := @this: org.hibernate.dialect.DerbyDialect$DerbyLimitHandler 
(assert (not (= var83 null-var3915)))
(declare-const var3045 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3045 null-String)))
(declare-const var1082 var1358) ; Statement: r8 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var1082 null-var1358)))
(define-const var3589 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var647 Int (length/-134980193 var3045)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var949 Int (+ var647 50)) ; Statement: $i1 = $i0 + 50 
(assert true)
;(assert (<init>/543593434 var3589 var949)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3589!1 String)
(declare-const var949!1 Int)
(define-const var2629 var767 var767-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1476 String (toLowerCase/1946809429 var3045 var2629)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(assert true)
(define-const var3529 String (trim/-847153721 var1476)) ; Statement: r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3676 Int (lastIndexOf/-618837785 var3529 "for update")) ; Statement: i2 = virtualinvoke r4.<java.lang.String: int lastIndexOf(java.lang.String)>("for update") 
(define-const var3760 var816 (this$0/-1977892673 var83)) ; Statement: $r6 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0> 
(define-const var2163 Bool (var816_access$100/247021877 var3760 var3676)) ; Statement: $z0 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$100(org.hibernate.dialect.DerbyDialect,int)>($r6, i2) 
 ; Statement: if $z0 == 0 goto $r7 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0> 
(assert (not (= (ite var2163 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var60 Int (- var3676 1)) ; Statement: $i7 = i2 - 1 
(assert (and true (and (>= 0 0) (>= (str.len var3045) var60) (>= var60 0))))
(define-const var2945 String (substring/-1240304868 var3045 0 var60)) ; Statement: $r21 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i7) 
(assert true)
;(assert (append/672562846 var3589!1 var2945)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var3589!2 String)
(assert (= var3589!2 (str.++ var3589!1 var2945)))
 ; Statement: goto [?= $z4 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r8)] 
(assert true) ; Non Conditional
(define-const var322 Bool (var1419_hasFirstRow/-2097898482 var1082)) ; Statement: $z4 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r8) 
 ; Statement: if $z4 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ") 
(assert (not (= (ite var322 1 0) 0))) ; Negate: Cond: $z4 == 0  
(assert true)
(define-const var3202 String (append/672562846 var3589!2 " offset ")) ; Statement: $r17 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ") 
(declare-const var3589!3 String)
(assert (= var3589!3 (str.++ var3589!2 " offset ")))
(assert true)
(define-const var2499 Int (getFirstRow/1410679095 var1082)) ; Statement: $r16 = virtualinvoke r8.<org.hibernate.engine.spi.RowSelection: java.lang.Integer getFirstRow()>() 
(assert true)
(define-const var3694 String (append/-1031950772 var3202 (cast-from-Int-to-var2570 var2499))) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var3202!1 String)
(assert (str.prefixof var3202 var3202!1))
(assert true)
;(assert (append/672562846 var3694 " rows fetch next ")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows fetch next ") 
(declare-const var3694!1 String)
(assert (= var3694!1 (str.++ var3694 " rows fetch next ")))
 ; Statement: goto [?= $i3 = virtualinvoke r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r8)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2034 Int (getMaxOrLimit/1324675775 (cast-from-var3915-to-var3769 var83) var1082)) ; Statement: $i3 = virtualinvoke r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r8) 
(assert true)
(define-const var755 String (append/-1001720160 var3589!3 var2034)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var3589!4 String)
(assert (str.prefixof var3589!3 var3589!4))
(assert true)
;(assert (append/672562846 var755 " rows only")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only") 
(declare-const var755!1 String)
(assert (= var755!1 (str.++ var755 " rows only")))
(define-const var532 var816 (this$0/-1977892673 var83)) ; Statement: $r10 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0> 
(define-const var2927 Bool (var816_access$100/247021877 var532 var3676)) ; Statement: $z2 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$100(org.hibernate.dialect.DerbyDialect,int)>($r10, i2) 
 ; Statement: if $z2 == 0 goto $r11 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0> 
(assert (= (ite var2927 1 0) 0)) ; Cond: $z2 == 0 
(define-const var540 var816 (this$0/-1977892673 var83)) ; Statement: $r11 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0> 
(define-const var3614 Bool (var816_access$200/2019219242 var540 var3529)) ; Statement: $z3 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$200(org.hibernate.dialect.DerbyDialect,java.lang.String)>($r11, r4) 
 ; Statement: if $z3 == 0 goto $r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3614 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
(define-const var1544 String (toString/-2075883882 var3589!4)) ; Statement: $r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), this$0/-1977892673=([org.hibernate.dialect.DerbyDialect$DerbyLimitHandler], org.hibernate.dialect.DerbyDialect), var816_access$100/247021877=([org.hibernate.dialect.DerbyDialect, int], boolean), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1419_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), getFirstRow/1410679095=([org.hibernate.engine.spi.RowSelection], java.lang.Integer), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-Int-to-var2570=([java.lang.Integer], java.lang.Object), getMaxOrLimit/1324675775=([org.hibernate.dialect.pagination.AbstractLimitHandler, org.hibernate.engine.spi.RowSelection], int), cast-from-var3915-to-var3769=([org.hibernate.dialect.DerbyDialect$DerbyLimitHandler], org.hibernate.dialect.pagination.AbstractLimitHandler), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), var816_access$200/2019219242=([org.hibernate.dialect.DerbyDialect, java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3915=org.hibernate.dialect.DerbyDialect$DerbyLimitHandler, var83=r5, var3045=r1, var3773=null_type, var1358=org.hibernate.engine.spi.RowSelection, var1082=r8, var3589=$r0, var647=$i0, var949=$i1, var767=java.util.Locale, var2629=$r2, var1476=$r3, var3529=r4, var3676=i2, var816=org.hibernate.dialect.DerbyDialect, var3760=$r6, var2163=$z0, var60=$i7, var2945=$r21, var1419=org.hibernate.dialect.pagination.LimitHelper, var322=$z4, var3202=$r17, var2499=$r16, var2570=java.lang.Object, var3694=$r18, var3769=org.hibernate.dialect.pagination.AbstractLimitHandler, var2034=$i3, var755=$r9, var532=$r10, var2927=$z2, var540=$r11, var3614=$z3, var1544=$r22}
; {org.hibernate.dialect.DerbyDialect$DerbyLimitHandler=var3915, r5=var83, r1=var3045, null_type=var3773, org.hibernate.engine.spi.RowSelection=var1358, r8=var1082, $r0=var3589, $i0=var647, $i1=var949, java.util.Locale=var767, $r2=var2629, $r3=var1476, r4=var3529, i2=var3676, org.hibernate.dialect.DerbyDialect=var816, $r6=var3760, $z0=var2163, $i7=var60, $r21=var2945, org.hibernate.dialect.pagination.LimitHelper=var1419, $z4=var322, $r17=var3202, $r16=var2499, java.lang.Object=var2570, $r18=var3694, org.hibernate.dialect.pagination.AbstractLimitHandler=var3769, $i3=var2034, $r9=var755, $r10=var532, $z2=var2927, $r11=var540, $z3=var3614, $r22=var1544}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.DerbyDialect$DerbyLimitHandler;	r1 := @parameter0: java.lang.String;	r8 := @parameter1: org.hibernate.engine.spi.RowSelection;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 50;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	i2 = virtualinvoke r4.<java.lang.String: int lastIndexOf(java.lang.String)>("for update");	$r6 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	$z0 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$100(org.hibernate.dialect.DerbyDialect,int)>($r6, i2);	if $z0 == 0 goto $r7 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	$i7 = i2 - 1;	$r21 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i7);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	goto [?= $z4 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r8)];	$z4 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r8);	if $z4 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	$r17 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ");	$r16 = virtualinvoke r8.<org.hibernate.engine.spi.RowSelection: java.lang.Integer getFirstRow()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows fetch next ");	goto [?= $i3 = virtualinvoke r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r8)];	$i3 = virtualinvoke r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r8);	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only");	$r10 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	$z2 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$100(org.hibernate.dialect.DerbyDialect,int)>($r10, i2);	if $z2 == 0 goto $r11 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	$r11 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	$z3 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$200(org.hibernate.dialect.DerbyDialect,java.lang.String)>($r11, r4);	if $z3 == 0 goto $r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 7