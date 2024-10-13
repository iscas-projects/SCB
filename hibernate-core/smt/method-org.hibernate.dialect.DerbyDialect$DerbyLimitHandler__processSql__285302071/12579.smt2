(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2271 0)
(declare-sort var3352 0)
(declare-sort var1277 0)
(declare-sort var3146 0)
(declare-sort var2760 0)
(declare-sort var2039 0)
(declare-sort var3170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun toLowerCase/1946809429 (String var3146) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-fun this$0/-1977892673 (var2271) var2760)
(declare-fun var2760_access$100/247021877 (var2760 Int) Bool)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2039_hasFirstRow/-2097898482 (var1277) Bool)
(declare-fun getMaxOrLimit/1324675775 (var3170 var1277) Int)
(declare-fun cast-from-var2271-to-var3170 (var2271) var3170)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2271 var2271)
(declare-const null-String String)
(declare-const null-var1277 var1277)
(declare-const var3146-ROOT var3146)
(declare-const var1603 var2271) ; Statement: r5 := @this: org.hibernate.dialect.DerbyDialect$DerbyLimitHandler 
(assert (not (= var1603 null-var2271)))
(declare-const var1029 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1029 null-String)))
(declare-const var1345 var1277) ; Statement: r8 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var1345 null-var1277)))
(define-const var2218 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var3932 Int (length/-134980193 var1029)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var904 Int (+ var3932 50)) ; Statement: $i1 = $i0 + 50 
(assert true)
;(assert (<init>/543593434 var2218 var904)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2218!1 String)
(declare-const var904!1 Int)
(define-const var3811 var3146 var3146-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2146 String (toLowerCase/1946809429 var1029 var3811)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(assert true)
(define-const var457 String (trim/-847153721 var2146)) ; Statement: r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3312 Int (lastIndexOf/-618837785 var457 "for update")) ; Statement: i2 = virtualinvoke r4.<java.lang.String: int lastIndexOf(java.lang.String)>("for update") 
(define-const var1715 var2760 (this$0/-1977892673 var1603)) ; Statement: $r6 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0> 
(define-const var22 Bool (var2760_access$100/247021877 var1715 var3312)) ; Statement: $z0 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$100(org.hibernate.dialect.DerbyDialect,int)>($r6, i2) 
 ; Statement: if $z0 == 0 goto $r7 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0> 
(assert (not (= (ite var22 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2544 Int (- var3312 1)) ; Statement: $i7 = i2 - 1 
(assert (and true (and (>= 0 0) (>= (str.len var1029) var2544) (>= var2544 0))))
(define-const var2772 String (substring/-1240304868 var1029 0 var2544)) ; Statement: $r21 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i7) 
(assert true)
;(assert (append/672562846 var2218!1 var2772)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2218!2 String)
(assert (= var2218!2 (str.++ var2218!1 var2772)))
 ; Statement: goto [?= $z4 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r8)] 
(assert true) ; Non Conditional
(define-const var2454 Bool (var2039_hasFirstRow/-2097898482 var1345)) ; Statement: $z4 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r8) 
 ; Statement: if $z4 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ") 
(assert (= (ite var2454 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
;(assert (append/672562846 var2218!2 " fetch first ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ") 
(declare-const var2218!3 String)
(assert (= var2218!3 (str.++ var2218!2 " fetch first ")))
(assert true) ; Non Conditional
(assert true)
(define-const var145 Int (getMaxOrLimit/1324675775 (cast-from-var2271-to-var3170 var1603) var1345)) ; Statement: $i3 = virtualinvoke r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r8) 
(assert true)
(define-const var2187 String (append/-1001720160 var2218!3 var145)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var2218!4 String)
(assert (str.prefixof var2218!3 var2218!4))
(assert true)
;(assert (append/672562846 var2187 " rows only")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only") 
(declare-const var2187!1 String)
(assert (= var2187!1 (str.++ var2187 " rows only")))
(define-const var3468 var2760 (this$0/-1977892673 var1603)) ; Statement: $r10 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0> 
(define-const var2910 Bool (var2760_access$100/247021877 var3468 var3312)) ; Statement: $z2 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$100(org.hibernate.dialect.DerbyDialect,int)>($r10, i2) 
 ; Statement: if $z2 == 0 goto $r11 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0> 
(assert (not (= (ite var2910 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
;(assert (append/-1166366385 var2218!4 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2218!5 String)
(assert (str.prefixof var2218!4 var2218!5))
(assert (and true (and (>= var3312 0) (>= (str.len var1029) var3312))))
(define-const var2806 String (substring/850833817 var1029 var3312)) ; Statement: $r15 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2) 
(assert true)
;(assert (append/672562846 var2218!5 var2806)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2218!6 String)
(assert (= var2218!6 (str.++ var2218!5 var2806)))
 ; Statement: goto [?= $r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3945 String (toString/-2075883882 var2218!6)) ; Statement: $r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), this$0/-1977892673=([org.hibernate.dialect.DerbyDialect$DerbyLimitHandler], org.hibernate.dialect.DerbyDialect), var2760_access$100/247021877=([org.hibernate.dialect.DerbyDialect, int], boolean), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2039_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), getMaxOrLimit/1324675775=([org.hibernate.dialect.pagination.AbstractLimitHandler, org.hibernate.engine.spi.RowSelection], int), cast-from-var2271-to-var3170=([org.hibernate.dialect.DerbyDialect$DerbyLimitHandler], org.hibernate.dialect.pagination.AbstractLimitHandler), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2271=org.hibernate.dialect.DerbyDialect$DerbyLimitHandler, var1603=r5, var1029=r1, var3352=null_type, var1277=org.hibernate.engine.spi.RowSelection, var1345=r8, var2218=$r0, var3932=$i0, var904=$i1, var3146=java.util.Locale, var3811=$r2, var2146=$r3, var457=r4, var3312=i2, var2760=org.hibernate.dialect.DerbyDialect, var1715=$r6, var22=$z0, var2544=$i7, var2772=$r21, var2039=org.hibernate.dialect.pagination.LimitHelper, var2454=$z4, var3170=org.hibernate.dialect.pagination.AbstractLimitHandler, var145=$i3, var2187=$r9, var3468=$r10, var2910=$z2, var2806=$r15, var3945=$r22}
; {org.hibernate.dialect.DerbyDialect$DerbyLimitHandler=var2271, r5=var1603, r1=var1029, null_type=var3352, org.hibernate.engine.spi.RowSelection=var1277, r8=var1345, $r0=var2218, $i0=var3932, $i1=var904, java.util.Locale=var3146, $r2=var3811, $r3=var2146, r4=var457, i2=var3312, org.hibernate.dialect.DerbyDialect=var2760, $r6=var1715, $z0=var22, $i7=var2544, $r21=var2772, org.hibernate.dialect.pagination.LimitHelper=var2039, $z4=var2454, org.hibernate.dialect.pagination.AbstractLimitHandler=var3170, $i3=var145, $r9=var2187, $r10=var3468, $z2=var2910, $r15=var2806, $r22=var3945}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.DerbyDialect$DerbyLimitHandler;	r1 := @parameter0: java.lang.String;	r8 := @parameter1: org.hibernate.engine.spi.RowSelection;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 50;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	i2 = virtualinvoke r4.<java.lang.String: int lastIndexOf(java.lang.String)>("for update");	$r6 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	$z0 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$100(org.hibernate.dialect.DerbyDialect,int)>($r6, i2);	if $z0 == 0 goto $r7 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	$i7 = i2 - 1;	$r21 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i7);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	goto [?= $z4 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r8)];	$z4 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r8);	if $z4 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	$i3 = virtualinvoke r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: int getMaxOrLimit(org.hibernate.engine.spi.RowSelection)>(r8);	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only");	$r10 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	$z2 = staticinvoke <org.hibernate.dialect.DerbyDialect: boolean access$100(org.hibernate.dialect.DerbyDialect,int)>($r10, i2);	if $z2 == 0 goto $r11 = r5.<org.hibernate.dialect.DerbyDialect$DerbyLimitHandler: org.hibernate.dialect.DerbyDialect this$0>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r15 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	goto [?= $r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 7