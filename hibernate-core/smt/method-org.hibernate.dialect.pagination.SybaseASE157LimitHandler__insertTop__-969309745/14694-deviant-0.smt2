(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1300 0)
(declare-sort var1816 0)
(declare-sort var3325 0)
(declare-sort var1652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun end/-952472175 (var1300 Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun matcher/468719934 (var3325 String) var1300)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var1300) Bool)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun insert/1196171004 (String Int String) String)
(declare-const null-var1300 var1300)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1652-TOP_PATTERN var3325)
(declare-const var1208 var1300) ; Statement: r0 := @parameter0: java.util.regex.Matcher 
(assert (not (= var1208 null-var1300)))
(declare-const var512 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var512 null-String)))
(declare-const var651 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var651 null-Int)))
(assert true)
(define-const var3200 Int (end/-952472175 var1208 1)) ; Statement: i0 = virtualinvoke r0.<java.util.regex.Matcher: int end(int)>(1) 
(define-const var3987 var3325 var1652-TOP_PATTERN) ; Statement: $r2 = <org.hibernate.dialect.pagination.SybaseASE157LimitHandler: java.util.regex.Pattern TOP_PATTERN> 
(assert (not (and true (and (>= var3200 0) (>= (str.len var512) var3200)))))
(check-sat)
(get-model)
(get-unsat-core)
; {end/-952472175=([java.util.regex.Matcher, int], int), substring/850833817=([java.lang.String, int], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder)}
; {var1300=java.util.regex.Matcher, var1208=r0, var512=r1, var1816=null_type, var651=i1, var3200=i0, var3325=java.util.regex.Pattern, var1652=org.hibernate.dialect.pagination.SybaseASE157LimitHandler, var3987=$r2, var1383=$r3, var2592=$r4, var115=$z0, var1240=$r5, var2390=$r6, var1482=$r7, var8=$r8, var1589=$r9, var1725=$r10, var1242=$r11}
; {java.util.regex.Matcher=var1300, r0=var1208, r1=var512, null_type=var1816, i1=var651, i0=var3200, java.util.regex.Pattern=var3325, org.hibernate.dialect.pagination.SybaseASE157LimitHandler=var1652, $r2=var3987, $r3=var1383, $r4=var2592, $z0=var115, $r5=var1240, $r6=var2390, $r7=var1482, $r8=var8, $r9=var1589, $r10=var1725, $r11=var1242}
;seq <java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1}
;stmts r0 := @parameter0: java.util.regex.Matcher;	r1 := @parameter1: java.lang.String;	i1 := @parameter2: int;	i0 = virtualinvoke r0.<java.util.regex.Matcher: int end(int)>(1);	$r2 = <org.hibernate.dialect.pagination.SybaseASE157LimitHandler: java.util.regex.Pattern TOP_PATTERN>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i0);	$r4 = virtualinvoke $r2.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r3);	$z0 = virtualinvoke $r4.<java.util.regex.Matcher: boolean matches()>();	if $z0 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1);	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("top ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(i0, $r10);	$r11 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 2