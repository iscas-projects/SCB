(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1029 0)
(declare-sort var2761 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun getUnquotedAliasString/-449901868 (var1029 String Int) String)
(declare-const null-var1029 var1029)
(declare-const null-String String)
(declare-const var1630 var1029) ; Statement: r2 := @this: org.hibernate.sql.Alias 
(assert (not (= var1630 null-var1029)))
(declare-const var1503 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1503 null-String)))
(assert (and true (and (> (str.len var1503) 0) (<= 0 0))))
(define-const var1276 Int (charAt/698050440 var1503 0)) ; Statement: c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var2652 String "`\u0022[") ; Statement: $r1 = "`\"[" 
(define-const var3671 Int (cast-from-Int-to-Int var1276)) ; Statement: $i2 = (int) c0 
(assert true)
(define-const var971 Int (indexOf/-1037706067 var2652 var3671)) ; Statement: i1 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>($i2) 
(assert true)
(define-const var2955 String (getUnquotedAliasString/-449901868 var1630 var1503 var971)) ; Statement: $r3 = specialinvoke r2.<org.hibernate.sql.Alias: java.lang.String getUnquotedAliasString(java.lang.String,int)>(r0, i1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int), getUnquotedAliasString/-449901868=([org.hibernate.sql.Alias, java.lang.String, int], java.lang.String)}
; {var1029=org.hibernate.sql.Alias, var1630=r2, var1503=r0, var2761=null_type, var1276=c0, var2652=$r1, var3671=$i2, var971=i1, var2955=$r3}
; {org.hibernate.sql.Alias=var1029, r2=var1630, r0=var1503, null_type=var2761, c0=var1276, $r1=var2652, $i2=var3671, i1=var971, $r3=var2955}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int)>": 1}
;stmts r2 := @this: org.hibernate.sql.Alias;	r0 := @parameter0: java.lang.String;	c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$r1 = "`\"[";	$i2 = (int) c0;	i1 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>($i2);	$r3 = specialinvoke r2.<org.hibernate.sql.Alias: java.lang.String getUnquotedAliasString(java.lang.String,int)>(r0, i1);	return $r3
;block_num 1