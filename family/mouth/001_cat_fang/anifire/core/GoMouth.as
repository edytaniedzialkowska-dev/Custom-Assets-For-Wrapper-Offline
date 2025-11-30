package anifire.core
{
    import anifire.event.*;
    import anifire.util.*;
    import flash.display.*;

    public class GoMouth extends MovieClip
    {
        public var speechMouth:MovieClip;

        public function GoMouth() : void
        {
            init();
            return;
        }// end function

        private function init() : void
        {
            reset();
            addEventListener(SpeechPitchEvent.PITCH, doPitch);
            return;
        }// end function

        private function reset() : void
        {
            if (speechMouth)
            {
                speechMouth.visible = true;
                speechMouth.gotoAndStop(1);
                if (speechMouth.theColor_ccMouthLip)
                {
                    speechMouth.theColor_ccMouthLip.gotoAndStop(1);
                }
                if (speechMouth.theColor_ccSkinColor)
                {
                    speechMouth.theColor_ccSkinColor.gotoAndStop(1);
                }
            }
            return;
        }// end function

        private function doPitch(event:SpeechPitchEvent) : void
        {
            var _loc_2:Number = NaN;
            _loc_2 = Math.floor(UtilMath.boundaryCheck(event.value / 1000, 0.1, 5) * 20);
            doSpeech(_loc_2);
            return;
        }// end function

        private function doSpeech(param1:Number) : void
        {
            if (speechMouth)
            {
                speechMouth.gotoAndStop(param1);
                if (speechMouth.theColor_ccMouthLip)
                {
                    speechMouth.theColor_ccMouthLip.gotoAndStop(param1);
                }
                if (speechMouth.theColor_ccSkinColor)
                {
                    speechMouth.theColor_ccSkinColor.gotoAndStop(param1);
                }
            }
            return;
        }// end function

    }
}
