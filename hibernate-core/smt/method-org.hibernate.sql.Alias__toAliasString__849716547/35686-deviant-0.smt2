(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3465 0)
(declare-sort var3103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun getUnquotedAliasString/-449901868 (var3465 String Int) String)
(declare-const null-var3465 var3465)
(declare-const null-String String)
(declare-const var1216 var3465) ; Statement: r2 := @this: org.hibernate.sql.Alias 
(assert (not (= var1216 null-var3465)))
(declare-const var2319 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2319 null-String)))
(assert (not (and true (and (> (str.len var2319) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int), getUnquotedAliasString/-449901868=([org.hibernate.sql.Alias, java.lang.String, int], java.lang.String)}
; {var3465=org.hibernate.sql.Alias, var1216=r2, var2319=r0, var3103=null_type, var2457=c0, var1684=$r1, var1331=$i3, var451=i1, var3758=r3}
; {org.hibernate.sql.Alias=var3465, r2=var1216, r0=var2319, null_type=var3103, c0=var2457, $r1=var1684, $i3=var1331, i1=var451, r3=var3758}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int)>": 1}
;stmts r2 := @this: org.hibernate.sql.Alias;	r0 := @parameter0: java.lang.String;	c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$r1 = "`\"[";	$i3 = (int) c0;	i1 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>($i3);	r3 = specialinvoke r2.<org.hibernate.sql.Alias: java.lang.String getUnquotedAliasString(java.lang.String,int)>(r0, i1);	if i1 < 0 goto return r3;	return r3
;block_num 2