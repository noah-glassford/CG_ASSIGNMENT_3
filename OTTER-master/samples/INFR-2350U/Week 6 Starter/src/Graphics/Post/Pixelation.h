#pragma once
#include "Graphics/Post/PostEffect.h"
class Pixelation : public PostEffect
{
public:
	//Initializes framebuffer
	void Init(unsigned width, unsigned height) override;

	//Applies effect to this buffer
	void ApplyEffect(PostEffect* buffer) override;

	int m_PixelCount = 100;

};