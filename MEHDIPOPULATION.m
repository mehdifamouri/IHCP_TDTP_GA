C========== MEHDIPOPULATION EDITION ===============
C===================================================
SUBROUTINE MEHDIPOPULA(NINPUB,NINMAX,PUBMEHDI,NP,IFEVALUATION)
COMMON/VAR/ A(100,2),ANEW(100,2),AF(100),AFNEW(100)
DIMENSION PUBMEHDI(100,10)
IF((NINPUB.GT.NINMAX))THEN
DO I=1,NINMAX
C	WRITE(*,*)PUBMEHDI(I,1),PUBMEHDI(I,2),PUBMEHDI(I,10)
END DO
WRITE(*,*)"MEHDI POPULATION==>>",IFEVALUATION
READ(*,*)AAAAA
END IF

IF (NINPUB.GT.NINMAX) THEN
DO I=1,NINMAX
AFMAX=0.
DO IK=1,NINMAX
IF (AFMAX.LT.PUBMEHDI(IK,10))THEN
AFMAX=PUBMEHDI(IK,10)
II=IK
END IF
END DO
AF(I)=PUBMEHDI(II,10)
PUBMEHDI(II,10)=-1.
DO J=1,NP
A(I,J)=PUBMEHDI(II,J)
END DO
END DO
END IF

RETURN
END