(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1037 0)
(declare-sort var1715 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun getUnquotedAliasString/-449901868 (var1037 String Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1037 var1037)
(declare-const null-String String)
(declare-const var2284 var1037) ; Statement: r2 := @this: org.hibernate.sql.Alias 
(assert (not (= var2284 null-var1037)))
(declare-const var3562 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3562 null-String)))
(assert (not (and true (and (> (str.len var3562) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int), getUnquotedAliasString/-449901868=([org.hibernate.sql.Alias, java.lang.String, int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1037=org.hibernate.sql.Alias, var2284=r2, var3562=r0, var1715=null_type, var1858=c0, var3994=$r1, var1828=$i3, var1972=i1, var425=r3, var751=$r4, var72=c2, var362=$r10, var317=$r6, var2241=$r7, var1260=$r8, var2794=$r9}
; {org.hibernate.sql.Alias=var1037, r2=var2284, r0=var3562, null_type=var1715, c0=var1858, $r1=var3994, $i3=var1828, i1=var1972, r3=var425, $r4=var751, c2=var72, $r10=var362, $r6=var317, $r7=var2241, $r8=var1260, $r9=var2794}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.sql.Alias;	r0 := @parameter0: java.lang.String;	c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$r1 = "`\"[";	$i3 = (int) c0;	i1 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>($i3);	r3 = specialinvoke r2.<org.hibernate.sql.Alias: java.lang.String getUnquotedAliasString(java.lang.String,int)>(r0, i1);	if i1 < 0 goto return r3;	$r4 = "`\"]";	c2 = virtualinvoke $r4.<java.lang.String: char charAt(int)>(i1);	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2