package anifire.core
{
   import anifire.event.SpeechPitchEvent;
   import anifire.util.UtilMath;
   import flash.display.MovieClip;
   
   public class GoMouth extends MovieClip
   {
      public var speechMouth:MovieClip;
      
      public function GoMouth()
      {
         super();
         this.init();
      }
      
      private function reset() : void
      {
         if(this.speechMouth)
         {
            this.speechMouth.visible = true;
            this.speechMouth.gotoAndStop(1);
            if(this.speechMouth.theColor_ccMouthLip)
            {
               this.speechMouth.theColor_ccMouthLip.gotoAndStop(1);
            }
            if(this.speechMouth.theColor_ccSkinColor)
            {
               this.speechMouth.theColor_ccSkinColor.gotoAndStop(1);
            }
         }
      }
      
      private function init() : void
      {
         this.reset();
         addEventListener(SpeechPitchEvent.PITCH,this.doPitch);
      }
      
      private function doPitch(param1:SpeechPitchEvent) : void
      {
         var _loc2_:Number = Math.floor(UtilMath.boundaryCheck(param1.value / 1000,0.1,5) * 20);
         this.doSpeech(_loc2_);
      }
      
      private function doSpeech(param1:Number) : void
      {
         if(this.speechMouth)
         {
            this.speechMouth.gotoAndStop(param1);
            if(this.speechMouth.theColor_ccMouthLip)
            {
               this.speechMouth.theColor_ccMouthLip.gotoAndStop(param1);
            }
            if(this.speechMouth.theColor_ccSkinColor)
            {
               this.speechMouth.theColor_ccSkinColor.gotoAndStop(param1);
            }
         }
      }
   }
}

