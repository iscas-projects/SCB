(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3448 0)
(declare-sort var1458 0)
(declare-sort var1617 0)
(declare-sort var1740 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun zipArchive/-257274782 (var3448) var1617)
(declare-fun getEntry/44785712 (var1617 String) var1740)
(declare-const null-var3448 var3448)
(declare-const null-String String)
(declare-const null-var1740 var1740)
(declare-const var2971 var3448) ; Statement: r2 := @this: org.apache.poi.openxml4j.util.ZipFileZipEntrySource 
(assert (not (= var2971 null-var3448)))
(declare-const var3247 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3247 null-String)))
(assert true)
(define-const var203 String (replace/1524665721 var3247 92 47)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
(define-const var1085 var1617 (zipArchive/-257274782 var2971)) ; Statement: $r3 = r2.<org.apache.poi.openxml4j.util.ZipFileZipEntrySource: org.apache.commons.compress.archivers.zip.ZipFile zipArchive> 
(assert true)
(define-const var493 var1740 (getEntry/44785712 var1085 var203)) ; Statement: r4 = virtualinvoke $r3.<org.apache.commons.compress.archivers.zip.ZipFile: org.apache.commons.compress.archivers.zip.ZipArchiveEntry getEntry(java.lang.String)>(r1) 
 ; Statement: if r4 == null goto $r5 = r2.<org.apache.poi.openxml4j.util.ZipFileZipEntrySource: org.apache.commons.compress.archivers.zip.ZipFile zipArchive> 
(assert (not (= var493 null-var1740))) ; Negate: Cond: r4 == null  
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), zipArchive/-257274782=([org.apache.poi.openxml4j.util.ZipFileZipEntrySource], org.apache.commons.compress.archivers.zip.ZipFile), getEntry/44785712=([org.apache.commons.compress.archivers.zip.ZipFile, java.lang.String], org.apache.commons.compress.archivers.zip.ZipArchiveEntry)}
; {var3448=org.apache.poi.openxml4j.util.ZipFileZipEntrySource, var2971=r2, var3247=r0, var1458=null_type, var203=r1, var1617=org.apache.commons.compress.archivers.zip.ZipFile, var1085=$r3, var1740=org.apache.commons.compress.archivers.zip.ZipArchiveEntry, var493=r4}
; {org.apache.poi.openxml4j.util.ZipFileZipEntrySource=var3448, r2=var2971, r0=var3247, null_type=var1458, r1=var203, org.apache.commons.compress.archivers.zip.ZipFile=var1617, $r3=var1085, org.apache.commons.compress.archivers.zip.ZipArchiveEntry=var1740, r4=var493}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r2 := @this: org.apache.poi.openxml4j.util.ZipFileZipEntrySource;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	$r3 = r2.<org.apache.poi.openxml4j.util.ZipFileZipEntrySource: org.apache.commons.compress.archivers.zip.ZipFile zipArchive>;	r4 = virtualinvoke $r3.<org.apache.commons.compress.archivers.zip.ZipFile: org.apache.commons.compress.archivers.zip.ZipArchiveEntry getEntry(java.lang.String)>(r1);	if r4 == null goto $r5 = r2.<org.apache.poi.openxml4j.util.ZipFileZipEntrySource: org.apache.commons.compress.archivers.zip.ZipFile zipArchive>;	return r4
;block_num 2