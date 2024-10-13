(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1202 0)
(declare-sort var742 0)
(declare-sort var3796 0)
(declare-sort var3507 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parseTableStatusIntoLocalAndReferencedColumns/-282842301 (var1202 String) var3507)
(declare-fun referencedTable/-9684541 (var3507) String)
(declare-const null-var1202 var1202)
(declare-const null-String String)
(declare-const null-var3796 var3796)
(declare-const null-Bool Bool)
(declare-const var3628 var1202) ; Statement: r0 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3628 null-var1202)))
(declare-const var66 String) ; Statement: r24 := @parameter0: java.lang.String 
(assert (not (= var66 null-String)))
(declare-const var2448 String) ; Statement: r25 := @parameter1: java.lang.String 
(assert (not (= var2448 null-String)))
(declare-const var20 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var20 null-String)))
(declare-const var3085 var3796) ; Statement: r38 := @parameter3: java.util.List 
(assert (not (= var3085 null-var3796)))
(declare-const var3295 String) ; Statement: r41 := @parameter4: java.lang.String 
(assert (not (= var3295 null-String)))
(declare-const var3955 Bool) ; Statement: z0 := @parameter5: boolean 
(assert (not (= var3955 null-Bool)))
(assert true)
(define-const var368 var3507 (parseTableStatusIntoLocalAndReferencedColumns/-282842301 var3628 var20)) ; Statement: r2 = virtualinvoke r0.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns parseTableStatusIntoLocalAndReferencedColumns(java.lang.String)>(r1) 
 ; Statement: if z0 == 0 goto $r3 = r2.<com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns: java.util.List localColumnsList> 
(assert (not (= (ite var3955 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1305 String (referencedTable/-9684541 var368)) ; Statement: $r47 = r2.<com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns: java.lang.String referencedTable> 
(assert true)
(define-const var2988 Bool (= var1305 var2448)) ; Statement: $z2 = virtualinvoke $r47.<java.lang.String: boolean equals(java.lang.Object)>(r25) 
 ; Statement: if $z2 != 0 goto $r3 = r2.<com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns: java.util.List localColumnsList> 
(assert (not (not (= (ite var2988 1 0) 0)))) ; Negate: Cond: $z2 != 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {parseTableStatusIntoLocalAndReferencedColumns/-282842301=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns), referencedTable/-9684541=([com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns], java.lang.String)}
; {var1202=com.mysql.cj.jdbc.DatabaseMetaData, var3628=r0, var66=r24, var742=null_type, var2448=r25, var20=r1, var3796=java.util.List, var3085=r38, var3295=r41, var3955=z0, var3507=com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns, var368=r2, var1305=$r47, var2988=$z2}
; {com.mysql.cj.jdbc.DatabaseMetaData=var1202, r0=var3628, r24=var66, null_type=var742, r25=var2448, r1=var20, java.util.List=var3796, r38=var3085, r41=var3295, z0=var3955, com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns=var3507, r2=var368, $r47=var1305, $z2=var2988}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r24 := @parameter0: java.lang.String;	r25 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	r38 := @parameter3: java.util.List;	r41 := @parameter4: java.lang.String;	z0 := @parameter5: boolean;	r2 = virtualinvoke r0.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns parseTableStatusIntoLocalAndReferencedColumns(java.lang.String)>(r1);	if z0 == 0 goto $r3 = r2.<com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns: java.util.List localColumnsList>;	$r47 = r2.<com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns: java.lang.String referencedTable>;	$z2 = virtualinvoke $r47.<java.lang.String: boolean equals(java.lang.Object)>(r25);	if $z2 != 0 goto $r3 = r2.<com.mysql.cj.jdbc.DatabaseMetaData$LocalAndReferencedColumns: java.util.List localColumnsList>;	return
;block_num 3