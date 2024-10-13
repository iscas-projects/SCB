(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var683 0)
(declare-sort var1779 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun maxPoolSize/-1693839518 (var683) Int)
(declare-fun utf8s/-1693839518 (var683) (Array Int String))
(declare-const null-var683 var683)
(declare-const null-String String)
(declare-const var1134 var683) ; Statement: r0 := @this: lombok.launch.ClassFileMetaData 
(assert (not (= var1134 null-var683)))
(declare-const var2967 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2967 null-String)))
(define-const var622 Int 1) ; Statement: i1 = 1 
 ; Statement: goto [?= $i0 = r0.<lombok.launch.ClassFileMetaData: int maxPoolSize>] 
(assert true) ; Non Conditional
(define-const var1656 Int (maxPoolSize/-1693839518 var1134)) ; Statement: $i0 = r0.<lombok.launch.ClassFileMetaData: int maxPoolSize> 
 ; Statement: if i1 < $i0 goto $r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s> 
(assert (< var622 var1656)) ; Cond: i1 < $i0 
(define-const var1288 (Array Int String) (utf8s/-1693839518 var1134)) ; Statement: $r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s> 
(define-const var1662 String (select var1288 var622)) ; Statement: $r3 = $r2[i1] 
(assert true)
(define-const var1646 Bool (= var2967 var1662)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var1646 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return i1 
(check-sat)
(get-model)
(get-unsat-core)
; {maxPoolSize/-1693839518=([lombok.launch.ClassFileMetaData], int), utf8s/-1693839518=([lombok.launch.ClassFileMetaData], java.lang.String[])}
; {var683=lombok.launch.ClassFileMetaData, var1134=r0, var2967=r1, var1779=null_type, var622=i1, var1656=$i0, var1288=$r2, var1662=$r3, var1646=$z0}
; {lombok.launch.ClassFileMetaData=var683, r0=var1134, r1=var2967, null_type=var1779, i1=var622, $i0=var1656, $r2=var1288, $r3=var1662, $z0=var1646}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: lombok.launch.ClassFileMetaData;	r1 := @parameter0: java.lang.String;	i1 = 1;	goto [?= $i0 = r0.<lombok.launch.ClassFileMetaData: int maxPoolSize>];	$i0 = r0.<lombok.launch.ClassFileMetaData: int maxPoolSize>;	if i1 < $i0 goto $r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s>;	$r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s>;	$r3 = $r2[i1];	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto i1 = i1 + 1;	return i1
;block_num 4