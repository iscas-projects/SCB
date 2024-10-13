(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2597 0)
(declare-sort var1129 0)
(declare-sort var3909 0)
(declare-sort var2612 0)
(declare-sort var1717 0)
(declare-sort var3287 0)
(declare-sort var540 0)
(declare-sort var938 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun toLowerCase/1946809429 (String var2612) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-fun this$0/-1977892673 (var2597) var1717)
(declare-fun var1717_access$100/247021877 (var1717 Int) Bool)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3287_hasFirstRow/-2097898482 (var3909) Bool)
(declare-fun getFirstRow/1410679095 (var3909) Int)
(declare-fun append/-1031950772 (String var540) String)
(declare-fun cast-from-Int-to-var540 (Int) var540)
(declare-fun getMaxOrLimit/1324675775 (var938 var3909) Int)
(declare-fun cast-from-var2597-to-var938 (var2597) var938)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2597 var2597)
(declare-const null-String String)
(declare-const null-var3909 var3909)
(declare-const var2612-ROOT var2612)
(declare-const var3712 var2597) ; Statement: r5 := @this: org.hibernate.dialect.DerbyDialect$DerbyLimitHandler 
(assert (not (= var3712 null-var2597)))
(declare-const var2394 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2394 null-String)))
(declare-const var262 var3909) ; Statement: r8 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var262 null-var3909)))
(define-const var1785 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var696 Int (length/-134980193 var2394)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3793 Int (+ var696 50)) ; Statement: $i1 = $i0 + 50 
(assert true)
;(assert (<init>/543593434 var1785 var3793)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1785!1 String)
(declare-const var3793!1 Int)
(define-const var2992 var2612 var2612-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2207 String (toLowerCase/1946809429 var2394 var2992)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(assert true)
(define-const var2670 String (trim/-847153721 var2207)) ; Statement: r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var687 Int (lastIndexOf/-618837785 var2670 "for update")) ; Statement: i2 = virtualinvoke r4.<java.lang.String: int lastIndexOf(java.lang.String)>("for update") 
(define-const var2103 var1717 (this$0/-1977892673 var3712)) ; Statement: $r6 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0> 
(define-const var810 Bool (var1717_access$100/247021877 var2103 var687)) ; Statement: $z0 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$100(org.hibernate.dialect.DerbyDialect,int)>($r6, i2) 
 ; Statement: if $z0 == 0 goto $r7 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0> 
(assert (not (= (ite var810 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var301 Int (- var687 1)) ; Statement: $i7 = i2 - 1 
(assert (not (and true (and (>= 0 0) (>= (str.len var2394) var301) (>= var301 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), this$0/-1977892673=([org.hibernate.dialect.DerbyDialect$DerbyLimitHandler], org.hibernate.dialect.DerbyDialect), var1717_access$100/247021877=([org.hibernate.dialect.DerbyDialect, int], boolean), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3287_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), getFirstRow/1410679095=([org.hibernate.engine.spi.RowSelection], java.lang.Integer), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-Int-to-var540=([java.lang.Integer], java.lang.Object), getMaxOrLimit/1324675775=([org.hibernate.dialect.pagination.AbstractLimitHandler, org.hibernate.engine.spi.RowSelection], int), cast-from-var2597-to-var938=([org.hibernate.dialect.DerbyDialect$DerbyLimitHandler], org.hibernate.dialect.pagination.AbstractLimitHandler), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2597=org.hibernate.dialect.DerbyDialect$DerbyLimitHandler, var3712=r5, var2394=r1, var1129=null_type, var3909=org.hibernate.engine.spi.RowSelection, var262=r8, var1785=$r0, var696=$i0, var3793=$i1, var2612=java.util.Locale, var2992=$r2, var2207=$r3, var2670=r4, var687=i2, var1717=org.hibernate.dialect.DerbyDialect, var2103=$r6, var810=$z0, var301=$i7, var2754=$r21, var3287=org.hibernate.dialect.pagination.LimitHelper, var757=$z4, var887=$r17, var2596=$r16, var540=java.lang.Object, var3973=$r18, var938=org.hibernate.dialect.pagination.AbstractLimitHandler, var2971=$i3, var3140=$r9, var3651=$r10, var2582=$z2, var1980=$r15, var603=$r22}
; {org.hibernate.dialect.DerbyDialect$DerbyLimitHandler=var2597, r5=var3712, r1=var2394, null_type=var1129, org.hibernate.engine.spi.RowSelection=var3909, r8=var262, $r0=var1785, $i0=var696, $i1=var3793, java.util.Locale=var2612, $r2=var2992, $r3=var2207, r4=var2670, i2=var687, org.hibernate.dialect.DerbyDialect=var1717, $r6=var2103, $z0=var810, $i7=var301, $r21=var2754, org.hibernate.dialect.pagination.LimitHelper=var3287, $z4=var757, $r17=var887, $r16=var2596, java.lang.Object=var540, $r18=var3973, org.hibernate.dialect.pagination.AbstractLimitHandler=var938, $i3=var2971, $r9=var3140, $r10=var3651, $z2=var2582, $r15=var1980, $r22=var603}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.DerbyDialect$DerbyLimitHandler;	r1 := @parameter0: java.lang.String;	r8 := @parameter1: org.hibernate.engine.spi.RowSelection;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 50;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	i2 = virtualinvoke r4.<java.lang.String: int lastIndexOf(java.lang.String)>("for update");	$r6 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	$z0 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$100(org.hibernate.dialect.DerbyDialect,int)>($r6, i2);	if $z0 == 0 goto $r7 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	$i7 = i2 - 1;	$r21 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i7);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	goto [?= $z4 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r8)];	$z4 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r8);	if $z4 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	$r17 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ");	$r16 = virtualinvoke r8.<org.hibernate.engine.spi.RowSelection: java.lang.Integer getFirstRow()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows fetch next ");	goto [?= $i3 = virtualinvoke r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r8)];	$i3 = virtualinvoke r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r8);	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only");	$r10 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	$z2 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$100(org.hibernate.dialect.DerbyDialect,int)>($r10, i2);	if $z2 == 0 goto $r11 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r15 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	goto [?= $r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 7