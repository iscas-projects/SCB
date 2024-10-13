(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1716 0)
(declare-sort var2191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/2037234668 (var1716) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1716 var1716)
(declare-const null-String String)
(declare-const var3152 var1716) ; Statement: r0 := @this: org.hibernate.sql.DisjunctionFragment 
(assert (not (= var3152 null-var1716)))
(declare-const var732 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var732 null-String)))
(define-const var705 String (buffer/2037234668 var3152)) ; Statement: $r1 = r0.<org.hibernate.sql.DisjunctionFragment: java.lang.StringBuilder buffer> 
(assert true)
(define-const var2326 Int (length/-171891354 var705)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r2 = r0.<org.hibernate.sql.DisjunctionFragment: java.lang.StringBuilder buffer> 
(assert (<= var2326 0)) ; Cond: $i0 <= 0 
(define-const var864 String (buffer/2037234668 var3152)) ; Statement: $r2 = r0.<org.hibernate.sql.DisjunctionFragment: java.lang.StringBuilder buffer> 
(assert true)
(define-const var2470 String (append/-1166366385 var864 40)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var864!1 String)
(assert (str.prefixof var864 var864!1))
(assert true)
(define-const var2291 String (append/672562846 var2470 var732)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2470!1 String)
(assert (= var2470!1 (str.++ var2470 var732)))
(assert true)
;(assert (append/-1166366385 var2291 41)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2291!1 String)
(assert (str.prefixof var2291 var2291!1))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/2037234668=([org.hibernate.sql.DisjunctionFragment], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1716=org.hibernate.sql.DisjunctionFragment, var3152=r0, var732=r3, var2191=null_type, var705=$r1, var2326=$i0, var864=$r2, var2470=$r4, var2291=$r5}
; {org.hibernate.sql.DisjunctionFragment=var1716, r0=var3152, r3=var732, null_type=var2191, $r1=var705, $i0=var2326, $r2=var864, $r4=var2470, $r5=var2291}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.sql.DisjunctionFragment;	r3 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.sql.DisjunctionFragment: java.lang.StringBuilder buffer>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r2 = r0.<org.hibernate.sql.DisjunctionFragment: java.lang.StringBuilder buffer>;	$r2 = r0.<org.hibernate.sql.DisjunctionFragment: java.lang.StringBuilder buffer>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return r0
;block_num 2